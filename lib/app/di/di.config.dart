// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../core/api/api_client.dart' as _i430;
import '../../core/auth/cubit/auth_cubit.dart' as _i992;
import 'di.service.dart' as _i776;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final serviceModule = _$ServiceModule();
    gh.singleton<_i992.AuthCubit>(() => _i992.AuthCubit());
    gh.lazySingleton<_i361.Dio>(() => serviceModule.getStore);
    gh.lazySingleton<_i430.ApiClient>(
        () => _i430.ApiClient(dio: gh<_i361.Dio>()));
    return this;
  }
}

class _$ServiceModule extends _i776.ServiceModule {}
