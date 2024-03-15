class ApiEndPoints {
  static const String authBaseUrl =
      "https://crotmwego7.execute-api.us-east-2.amazonaws.com/auth/";

  static const String otpSendBaseUrl =
      "https://l6v4zdocu3.execute-api.us-east-2.amazonaws.com/authgw";

  static const String wpUrl =
      "https://l6v4zdocu3.execute-api.us-east-2.amazonaws.com/authgw/sendotp";

  static const String gpBaseUrl =
      "https://k4r53f7v0a.execute-api.us-east-2.amazonaws.com/gp/";

  static const String imageUploadBaseUrl = 'https://oyflwrul24.execute-api.ap-south-1.amazonaws.com/default/';
  static const String imageUpload = 'getS3SignedUrl';

  static const String auth = "auth";

  static const String sendOtp = "/sendotp";
  static const String verifyOtp = "/validateOtp";
  static const String signUp = "/signup";

  static const String saveUserProfile = "userprofile/save/";
  static const String postUserProfile =
      "propertyTax/citizen";
  static const String updateUserProfile =
      "propertyTax/citizen/64b4ecddd905e6b30031ee94";
  static const String getUserProfile =
      "propertyTax/citizen/64b4ecddd905e6b30031ee94";
  static const String propertyListing =
      "propertyTax/properties/find/64d76ba216fb9384f311c418";
}
