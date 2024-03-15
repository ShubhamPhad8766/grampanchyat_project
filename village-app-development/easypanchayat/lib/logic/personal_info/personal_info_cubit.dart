import 'package:bloc/bloc.dart';
import 'package:get_storage/get_storage.dart';
import 'package:meta/meta.dart';
import '../../repositories/auth/auth_repo.dart';

part 'personal_info_state.dart';

class PersonalInfoCubit extends Cubit<PersonalInfoState> {
  final AuthRepo _authRepo = AuthRepo();
  PersonalInfoCubit() : super(PersonalInfoInitial());

  void signUp({
    String? number,
    String? password,
    String? first_name,
    String? middle_name,
    String? last_name,
  }) async {
    var data = {
      "name": first_name,
      "middle_name": middle_name,
      "last_name": last_name,
      "password": " ",
      "phoneNumber": number,
    };
    emit(PersonalInfoLoading());
    var response = await _authRepo.signUp(data: data);
    response.fold((error) {
      emit(SignUpError(error.message));
    }, (data) {
      var box = GetStorage();
      box.write("_id", data.data?.id ?? '');
      box.write("name", first_name);
      String token = data.token ?? "";
        GetStorage().write("token", token);
      // LocalStorage.saveUserDetails(data.token ?? "");
      saveUserProfile(
          data.data?.id ?? "", number, first_name, middle_name, last_name);
    });
  }

  void saveUserProfile(
    String? id,
    String? number,
    String? first_name,
    String? middle_name,
    String? last_name,
  ) async {
    var data = {
      "name": first_name,
      "middle_name": middle_name,
      "last_name": last_name,
      "phoneNumber": number,
    };
    var response = await _authRepo.saveUserProfile(
      id ?? "",
      data: data,
    );
    response.fold((error) {
      emit(PersonalInfoError(error.message));
    }, (data) {
      emit(PersonalInfoSuccess());
    });
  }
}
