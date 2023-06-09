// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../feature/auth/application/facade.dart' as _i8;
import '../../feature/auth/domain/repo/repo.dart' as _i6;
import '../../feature/auth/infrastructure/data_source/remote/remote.dart'
    as _i5;
import '../../feature/auth/infrastructure/repo/repo_impl.dart' as _i7;
import '../../feature/auth/presentation/state/auth_bloc.dart' as _i9;
import '../service/http_client.dart' as _i4;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.Dio>(_i4.DioClient());
    gh.factory<_i5.AuthRemote>(() => _i5.AuthRemote(gh<_i3.Dio>()));
    gh.factory<_i6.IAuthRepo>(
        () => _i7.AuthRepoImpl(remote: gh<_i5.AuthRemote>()));
    gh.factory<_i8.AuthFacade>(() => _i8.AuthFacade(repo: gh<_i6.IAuthRepo>()));
    gh.singleton<_i9.AuthBloc>(
      _i9.AuthBloc(gh<_i8.AuthFacade>()),
      dispose: (i) => i.dispose(),
    );
    return this;
  }
}
