part of 'image_upload_cubit.dart';

// ignore: must_be_immutable
@immutable
abstract class ImageUploadState {
  
}

class ImageUploadInitial extends ImageUploadState {

}

class ImageSelectedState extends ImageUploadState {
  final String imagePath;
  ImageSelectedState(this.imagePath);
}

class ImageUploadError extends ImageUploadState {
  final String error;
  ImageUploadError(this.error);
}

class ImageUploadLoading extends ImageUploadState {}

class ImageUploadSuccess extends ImageUploadState {}
