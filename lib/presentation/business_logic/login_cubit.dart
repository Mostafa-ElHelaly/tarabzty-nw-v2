import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../data/models/user_model.dart';
import '../../data/web_services/login_api.dart';


part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  UserModel? user;
  Future<dynamic> Login(String email, String password) async {
    emit(LoginLoading());
    var res = await LoginApi.Login(email, password);
    if (res is String || res == null) {
      emit(LoginError(err:res.toString()));
    } else {
      user = UserModel.fromJson(res);
      emit(LoginSuccess());
    }
  }

}
