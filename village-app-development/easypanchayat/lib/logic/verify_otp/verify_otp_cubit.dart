import 'package:easypanchayat/repositories/auth/auth_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_storage/get_storage.dart';
part 'verify_otp_state.dart';

class VerifyOtpCubit extends Cubit<VerifyOtpState> {
  final AuthRepo _authRepo = AuthRepo();
  VerifyOtpCubit() : super(VerifyOtpInitial());

  void verifyOtp({required String phoneNumber, int? otp}) async {
    var data = {"phoneNumber": phoneNumber, "otp": otp};
    emit(VerifyOtpLoading());
    var response = await _authRepo.verifyOtp(data: data);
    response.fold((error) {
      emit(VerifyOtpError(error.message));
    }, (data) {
      emit(VerifyOtpSuccess());
      if (data.data?.userExits != true) {
        emit(VerifyOtpUserNotExists(phoneNumber: phoneNumber));
      } else {
        String token = data.token ?? "";
        GetStorage().write("token", token);
        
        emit(UserLoggedIn());
      }
    });
  }
}
