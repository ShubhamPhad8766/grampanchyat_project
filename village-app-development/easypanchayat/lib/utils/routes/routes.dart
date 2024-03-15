import 'dart:developer';

import 'package:easypanchayat/presentations/home_screen/home_screen.dart';
import 'package:easypanchayat/presentations/profile_screen/profile_screen.dart';
import 'package:easypanchayat/presentations/property_list/property_list.dart';
import 'package:easypanchayat/presentations/verify_otp_screen/verify_otp_screen.dart';
import 'package:go_router/go_router.dart';

import '../../presentations/basic_info/basic_info_screen.dart';

import '../../presentations/certificate_screem/certificate_screen.dart';
import '../../presentations/phone_screen/phone_screen.dart';
import '../../presentations/property_detail/property_detail.dart';
import '../../presentations/search_village/search_village_screen.dart';

class Routes {
  static String homeScreen = "/home-screen";
  static String searchVillageScreen = "/search-village";
  static String phoneScreen = "/phone-screen";
  static String otpScreen = "/otp-screen";
  static String basicInfoScreen = "/basic-info";
  static String profileScreen = "/profile-screen";
  static String propertyListScreen = "/property-list-screen";
  static String propertyDetailScreen = "/property-detail-screen";
  static String certificateScreen = "/certificate-screen";

  GoRouter get router => _goRouter;

  late final GoRouter _goRouter = GoRouter(
    initialLocation: searchVillageScreen,
    routes: [
      GoRoute(
        path: homeScreen,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: searchVillageScreen,
        builder: (context, state) => const SearchVillageScreen(),
      ),
      GoRoute(
        path: phoneScreen,
        builder: (context, state) => const PhoneScreen(),
      ),
      GoRoute(
        path: otpScreen,
        builder: (context, state) {
          var data = state.extra as Map<String, String>;
          String? phoneNumber = data["phoneNumber"];
          return OtpScreen(
            phoneNumber: phoneNumber,
          );
        },
      ),
      GoRoute(
        path: basicInfoScreen,
        builder: (context, state) {
          log(state.extra.toString());
          var data = state.extra as Map<String, String>;
          String? phoneNumber = data["phoneNumber"];
          return BasiInfoScreen(
            phoneNumber: phoneNumber,
          );
        },
      ),
      GoRoute(
        path: profileScreen,
        builder: (context, state) => const ProfileScreen(),
      ),
      GoRoute(
        path: propertyListScreen,
        builder: (context, state) => const PropertyListScreen(),
      ),
      GoRoute(
        path: propertyDetailScreen,
        builder: (context, state) => const PropertyDetail(),
      ),
      GoRoute(
        path: certificateScreen,
        builder: (context, state) => ExpandableListScreen(),
      ),
    ],
    redirect: (context, state) async {
      return null;
    },
  );
}
