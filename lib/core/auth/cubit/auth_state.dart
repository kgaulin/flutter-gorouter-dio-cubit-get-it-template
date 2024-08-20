part of 'auth_cubit.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class AuthAuthenticated extends AuthState {
  final String userId;
  final String token;

  AuthAuthenticated({required this.userId, required this.token});
}
