import 'package:dio/dio.dart';
import 'package:flutter_cubit_gorouter_template/core/auth/cubit/auth_cubit.dart';

import '../../app/di/di.dart';

class TokenInterceptor extends Interceptor {
  TokenInterceptor();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final AuthCubit authCubit = getIt();
    final AuthState state = authCubit.state;
    String? token;
    if (state is AuthAuthenticated) {
      token = state.token;
    }

    // get token from the storage
    if (token != null) {
      options.headers.addAll({
        "Authorization": "Bearer $token",
      });
    }
    return super.onRequest(options, handler);
  }
}
