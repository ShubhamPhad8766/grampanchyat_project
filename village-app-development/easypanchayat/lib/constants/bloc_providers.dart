import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/single_child_widget.dart';

import '../logic/home/home_cubit.dart';
import '../logic/image_upload/image_upload_cubit.dart';
import '../logic/personal_info/personal_info_cubit.dart';
import '../logic/profile/profile_cubit.dart';
import '../logic/property_list/property_list_cubit.dart';
import '../logic/send_otp/send_otp_cubit.dart';
import '../logic/verify_otp/verify_otp_cubit.dart';

List<SingleChildWidget> blocProviders = [
  BlocProvider(create: (context) => SendOtpCubit()),
  BlocProvider(create: (context) => VerifyOtpCubit()),
  BlocProvider(create: (context) => PersonalInfoCubit()),
  BlocProvider(create: (context) => ProfileCubit()),
  BlocProvider(create: (context) => PropertyListCubit()),
  BlocProvider(create: (context) => HomeCubit()),
  BlocProvider(create: (context) => ImageUploadCubit()),
];
