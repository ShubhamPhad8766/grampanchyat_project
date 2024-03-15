import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';

import '../../repositories/auth/auth_repo.dart';
part 'send_otp_state.dart';

class SendOtpCubit extends Cubit<SendOtpState> {
  final AuthRepo _authRepo = AuthRepo();
  SendOtpCubit() : super(SendOtpInitial());

  void sendOtp(String number) async {
    var data = {
      "phoneNumber": number,
    };
    try {
      emit(SendOtpLoading());
      var response = await _authRepo.sendOtp(data: data);
      response.fold((error) {
        emit(SendOtpError(error.message));
      }, (data) {
        emit(SendOtpSuccess());
      });
    } catch (e) {
      emit(SendOtpError(e.toString()));
    }
  }

  
}
