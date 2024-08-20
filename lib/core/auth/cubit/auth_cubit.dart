import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

part 'auth_state.dart';

@Singleton()
class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
}
