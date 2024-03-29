part of 'signup_cubit.dart';

@immutable
abstract class SignupState {}


class SignupInitial extends SignupState {}
class SignupLoading extends SignupState {}
class SignupSuccess extends SignupState {}
class SignupError extends SignupState {
  final String err;
  SignupError({required this.err});
}
