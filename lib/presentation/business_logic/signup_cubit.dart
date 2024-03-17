import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/web_services/signup_api.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit() : super(SignupInitial());

  Future<dynamic> signup(
    String firstName,
    String lastName,
    String phoneNumber,
    DateTime dateOfBirth,
    String email,
    String password,
    String confirmPassword,
  ) async {
    emit(SignupLoading());
    var res = await SignupApi.Signup(
      firstName,
      lastName,
      phoneNumber,
      dateOfBirth,
      email,
      password,
      confirmPassword,
    );
    if (res is String || res == null) {
      print(55);
      emit(SignupError(err: res.toString()));
    } else {
      emit(SignupSuccess());
    }
  }
}
