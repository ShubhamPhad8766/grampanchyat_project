import 'dart:async';

import 'package:get_storage/get_storage.dart';

enum AuthenticationState { Authenticated, Unauthenticated }





class AuthenticationBloc {
  Stream<AuthenticationState> get authenticationStateStream =>
      _authenticationController.stream;
  final _authenticationController = StreamController<AuthenticationState>();

  void login() {
    // Perform login logic here, and if successful:
    _authenticationController.add(AuthenticationState.Authenticated);
  }

  void logout() {
    // Perform logout logic here:
    _authenticationController.add(AuthenticationState.Unauthenticated);
  }

  // 3. Initialize the Bloc
  AuthenticationBloc() {
    // Check if the user is logged in or not, and update the state accordingly
    // For example, you can check SharedPreferences or any other authentication storage.
    bool checkIfUserIsLoggedIn() {
    // Here, you can use GetStorage to check if the user is logged in or not.
    // For example, if you save a token upon login, you can check if the token exists.
    // Replace 'your_token_key' with the actual key you used to store the token.
    String token = GetStorage().read('your_token_key');
    return token != null && token.isNotEmpty;
  }
  
    bool isLoggedIn = checkIfUserIsLoggedIn();
    if (isLoggedIn) {
      _authenticationController.add(AuthenticationState.Authenticated);
    } else {
      _authenticationController.add(AuthenticationState.Unauthenticated);
    }
  }

  void dispose() {
    _authenticationController.close();
  }
}
