


part of 'send_otp_cubit.dart';


@immutable
abstract class SendOtpState {}

class SendOtpInitial extends SendOtpState {}

class SendOtpError extends SendOtpState {
  final String? errorMesage;

  SendOtpError(this.errorMesage);
}

class SendOtpSuccess extends SendOtpState {}

class SendOtpLoading extends SendOtpState {}
