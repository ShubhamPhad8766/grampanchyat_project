import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_storage/get_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mime/mime.dart';
import '../../model/profile_response_model/profile_response_model.dart';
import '../../repositories/auth/auth_repo.dart';
import '../../repositories/edit_profile/edit_profile_repo.dart';
import '../../repositories/image_upload_repo/image_upload_repo.dart';
import '../../utils/app_utils/snackbar/snackbar.dart';

import 'dart:developer';
import 'dart:io';
import 'package:flutter/services.dart';
import '../../services/api/api_manager.dart';
part 'profile_state.dart';


class ProfileCubit extends Cubit<ProfileState> {
  final AuthRepo _authRepo = AuthRepo();
  final EditProfileRepo _editProfileRepo = EditProfileRepo();
  final storage = GetStorage();
  final ImageUplaodRepo _imageRepo = ImageUplaodRepo();  
  ProfileCubit() : super(ProfileInitial()) {}

  bool isMale = true; // Initialize the checkbox state

  void toggleGender(bool value) {
    isMale = value;
    emit(ProfileGenderUpdated(isMale));
  }

  getUserData() async {
    var box = GetStorage();
    var id = box.read("_id");
    print(id);
    try {
      print("object");
      emit(ProfileLoading());
      var box = GetStorage();
      String? userId = box.read('_id');

      print(userId);
      var response = await _authRepo.getUserProfileData();
      response.fold((error) {
        emit(ProfileError(error.message));
      }, (data) {
        emit(ProfileLoaded(userData: data));
        print(data);
      });
    } catch (e) {
      emit(ProfileError(e.toString()));
    }
  }

  getUserProfileData() async {
    try {
      emit(ProfileLoading());
      var response = await _authRepo.getUserProfileData();
      response.fold((error) {
        emit(ProfileError(error.message));
      }, (data) {
        emit(ProfileLoaded(userData: data));
        print(data);
      });
    } catch (e) {
      emit(ProfileError(e.toString()));
    }
  }

  void postUserProfile(String firstName, String lastName) async {
    var data = {
      "FirstName": firstName,
      "LastName": lastName,
      // "phoneNumber": phoneNumber,
      // "WhatsappNumber": whatsAppNumber,
      // "Email": email,
    };

    try {
      emit(ProfileLoading());
      var response = await _editProfileRepo.postUserProfileData(data);
      response.fold((error) {
        emit(ProfileError(error.message));
      }, (data) {
        var box = GetStorage();
        box.write("userId", data.data?.id ?? '');
        emit(ProfileLoaded(userData: data));
      });
    } catch (e) {
      emit(ProfileError(e.toString()));
    }
  }

  void updateUserProfile(
      String firstName, String lastName, String dob, String phoneNumber, String email, String whatsappNumber, String address,
     String panNumber, String passport) async {
    var data = {
      "FirstName": firstName,
      "LastName": lastName,      
      "phoneNumber": phoneNumber,      
      "Email": email,      
      "WhatsappNumber": whatsappNumber,      
      "aadress": address,      
      // "aadharNumber": aadharCard,      
      "panNumber": panNumber,      
      "passport": passport,      
    };

    try {
      emit(ProfileLoading());
      var response = await _editProfileRepo.updateUserProfileData(data);
      response.fold((error) {
        emit(ProfileError(error.message));
      }, (data) {
        emit(ProfileLoaded(userData: data));
      });
    } catch (e) {
      emit(ProfileError(e.toString()));
    }
  }


   void getImageUrl({
    BuildContext? context,
    String? imageName,
    String? imageType,
    Uint8List? bytes,
  }) async {
    emit(ProfileLoading());
    var response = await _imageRepo.uploadImage(imageName, imageType);
    response.fold((error) {
      print(error.message);
      emit(ProfileError(error.message));
    }, (data) {
      uploadImage(context, data, imageType, bytes);
    });
  }

  void uploadImage(context, data, fileType, fileDataBinary) async {
    var url = Uri.parse(data.uploadUrl?.split("?").first ?? "");
    print(url);
    postUserImage(context, url.toString());

    // print("$url");
    var response = await ApiManager().dioPutFile(
        uploadFile: XFile.fromData(fileDataBinary!),
        url: data.uploadUrl!,
        contentType: fileType,
        fileLength: fileDataBinary!.length);
    response.fold((error) {
      print('error');
      emit(ProfileError(error.message));
    }, (data) {
      // emit(url as ImageUploadState);
      emit(ProfileUploadSuccess());      
      context.read<ProfileCubit>().getUserData();
      
    });
  }

  void postUserImage(BuildContext context, String imgUrl) async {
    var data = {
      "signUrl": imgUrl,
    };
    try {
      emit(ProfileLoading());
      print('after post user image');
      var response = await _editProfileRepo.updateImage(data);
      response.fold((error) {
        emit(ProfileError(error.message));
      }, (data) async {
        log('before get call');
        // await context.read<ProfileCubit>().getUserData();
        emit(ProfileLoaded(userData: data));
        // emit(ProfileUploadSuccess(userData: data));
        log('after get call');
      });
    } catch (e) {
      emit(ProfileError(e.toString()));
    }
  }

  Future<void> captureAndUploadImage(BuildContext context) async {
    final imagePicker = ImagePicker();
    final pickedFile = await imagePicker.pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      final filePath = File(pickedFile.path);
      final bytes = pickedFile.readAsBytes();
      final mimeType = lookupMimeType(pickedFile.path);
      log("$bytes ............................... readAsBytes");
      log("$filePath ............................... filePath");
      log("$mimeType ............................... mimeType");

      Navigator.pop(context);
    } else {
      Navigator.pop(context);
      SnackBarWidget.showSnackbar(context, 'File Not Selected');
    }
  }

  Future<void> pickImage(BuildContext context) async {
    final result = await FilePicker.platform.pickFiles(
      withData: true,
      type: FileType.custom,
      allowedExtensions: ['jpg', 'png', 'jpeg'],
    );
    if (result != null) {
      try {
        final image = result.files.single.name;
        final bytes = result.files.single.bytes;
        final imageType = lookupMimeType(result.files.single.name);
        if (image != '' && imageType != null) {
          // emit(result.files.single.path as ImageUploadState);
          emit(ImageSelected(result.files.single.path.toString()));

          getImageUrl(
              context: context,
              imageName: image,
              imageType: imageType,
              bytes: bytes);
          Navigator.pop(context);
        }
      } catch (e) {
        log(e.toString());
      }
    } else {
      Navigator.pop(context);
      SnackBarWidget.showSnackbar(context, 'File Not Selected');
    }
  }

}
