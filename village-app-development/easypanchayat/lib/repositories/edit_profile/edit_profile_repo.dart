import 'package:dartz/dartz.dart';

import '../../constants/api_end_points.dart';
import '../../model/profile_response_model/profile_response_model.dart';
import '../../services/api/api_exceptions.dart';
import '../../services/api/api_manager.dart';
import '../../services/api/failure.dart';

class EditProfileRepo {
  final _apiManager = ApiManager();

  Future<Either<Failure, UserProfileDataModel>> postUserProfileData(
      Map<String, dynamic> data) async {
    try {
      var jsonResponse = await _apiManager.post(
          "${ApiEndPoints.gpBaseUrl}${ApiEndPoints.postUserProfile}", data);
      var response = UserProfileDataModel.fromJson(jsonResponse);
      return right(response);
    } on AppException catch (error) {
      return left(ApiFailure(message: error.message));
    } catch (error) {
      return left(ApiFailure(message: error.toString()));
    }
  }

  Future<Either<Failure, UserProfileDataModel>> updateUserProfileData(
      Map<String, dynamic> data) async {
    try {
      var jsonResponse = await _apiManager.put(
          "${ApiEndPoints.gpBaseUrl}${ApiEndPoints.updateUserProfile}", data);
      var response = UserProfileDataModel.fromJson(jsonResponse);
      return right(response);
    } on AppException catch (error) {
      return left(ApiFailure(message: error.message));
    } catch (error) {
      return left(ApiFailure(message: error.toString()));
    }
  }

  Future<Either<Failure, UserProfileDataModel>> updateImage(
      Map<String, dynamic> data) async {
    try {
      var jsonResponse = await _apiManager.put(
          "${ApiEndPoints.gpBaseUrl}${ApiEndPoints.updateUserProfile}", data);
      var response = UserProfileDataModel.fromJson(jsonResponse);
      return right(response);
    } on AppException catch (error) {
      return left(ApiFailure(message: error.message));
    } catch (error) {
      return left(ApiFailure(message: error.toString()));
    }
  }
}
