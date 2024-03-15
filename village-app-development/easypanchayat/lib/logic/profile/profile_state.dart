part of 'profile_cubit.dart';

abstract class ProfileState {  
  UserProfileDataModel? userData;
  ProfileState({this.userData});
}

class ProfileInitial extends ProfileState {
  ProfileInitial({super.userData});
}
 
class ProfileGenderUpdated extends ProfileState {
   final bool isMale;

  ProfileGenderUpdated(this.isMale);
}
 

class ProfileLoaded extends ProfileState {
  ProfileLoaded({super.userData});
}

class ProfileLoading extends ProfileState {
  ProfileLoading({super.userData});
}
class ProfileUploadSuccess extends ProfileState {
  ProfileUploadSuccess({super.userData});
}

class ProfileError extends ProfileState {
  final String? errorMesage;
  ProfileError(this.errorMesage, {super.userData});
}

class LogoutState extends ProfileState {
  LogoutState({super.userData});
}

class ImageSelected extends ProfileState {
  final String imagePath;
  ImageSelected(this.imagePath);
}