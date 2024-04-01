import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kimit_tours/cubit/app_states.dart';

class LoginCubit extends Cubit<AppStates> {
  LoginCubit() : super(AppInitialState());

  static LoginCubit get(context) => BlocProvider.of(context);
  bool isVisible = true;

  IconData visIcon = Icons.visibility_off;

  void visibilityHandle() {
    isVisible = !isVisible;
    emit(LoginPasswordVisibilityState());
  }

  void userLogin({
    required String email,
    required String password,
  }) {
    FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password)
        .then((value) {
      print(value.user!.email);
      emit(LoginSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(LoginErrorState(error.toString()));
    });
  }
}
