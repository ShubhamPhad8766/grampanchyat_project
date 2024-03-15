
import 'package:dartz/dartz.dart';
import '../../constants/api_end_points.dart';
import '../../model/profile_response_model/profile_response_model.dart';
import '../../model/send_otp_response_model/send_otp_response_model.dart';
import '../../model/sign_up_response_model/sign_up_response_model.dart';
import '../../model/verify_otp_response_model.dart/verify_otp_response_model.dart';
import '../../services/api/api_exceptions.dart';
import '../../services/api/api_manager.dart';
import '../../services/api/failure.dart';

class AuthRepo {
  final _apiManager = ApiManager();

  Future<Either<Failure, SendOtpResponseModel>> sendOtp(
      {required Map data}) async {
    try {
      var jsonResponse = await _apiManager.post(
          "${ApiEndPoints.otpSendBaseUrl}${ApiEndPoints.sendOtp}",
          data);
      var response = SendOtpResponseModel.fromJson(jsonResponse);
      return right(response);
    } on AppException catch (error) {
      return left(ApiFailure(message: error.message));
    } catch (error) {
      return left(ApiFailure(message: error.toString()));
    }
  }

  Future<Either<Failure, VerificationResponseModel>> verifyOtp(
      {required Map data}) async {
    try {
      var jsonResponse = await _apiManager.post(
          "${ApiEndPoints.authBaseUrl}${ApiEndPoints.auth}${ApiEndPoints.verifyOtp}",
          data);
      var response = VerificationResponseModel.fromJson(jsonResponse);
      return right(response);
    } on AppException catch (error) {
      return left(ApiFailure(message: error.message));
    } catch (error) {
      return left(ApiFailure(message: error.toString()));
    }
  }

  Future<Either<Failure, SignUpResponseModel>> signUp(
      {required Map data}) async {
    try {
      var jsonResponse = await _apiManager.post(
          "${ApiEndPoints.authBaseUrl}${ApiEndPoints.auth}${ApiEndPoints.signUp}",
          data);
      var response = SignUpResponseModel.fromJson(jsonResponse);
      return right(response);
    } on AppException catch (error) {
      return left(ApiFailure(message: error.message));
    } catch (error) {
      return left(ApiFailure(message: error.toString()));
    }
  }

  Future<Either<Failure, SignUpResponseModel>> saveUserProfile(String id,
      {required Map data}) async {
    try {
      var jsonResponse = await _apiManager.post(
          "${ApiEndPoints.authBaseUrl}${ApiEndPoints.saveUserProfile}$id", data);
      var response = SignUpResponseModel.fromJson(jsonResponse);
      return right(response);
    } on AppException catch (error) {
      return left(ApiFailure(message: error.message));
    } catch (error) {
      return left(ApiFailure(message: error.toString()));
    }
  }

  Future<Either<Failure, UserProfileDataModel>> getUserProfileData() async {
    try {
      var jsonResponse = await _apiManager
          .get("${ApiEndPoints.gpBaseUrl}${ApiEndPoints.getUserProfile}");
      var response = UserProfileDataModel.fromJson(jsonResponse);
      return right(response);
    } on AppException catch (error) {
      return left(ApiFailure(message: error.message));
    } catch (error) {
      return left(ApiFailure(message: error.toString()));
    }
  }
}
