// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../feature/add_ad/application/facade.dart' as _i4;
import '../../feature/add_ad/domain/repo/repo.dart' as _i5;
import '../../feature/add_ad/infrastructure/data_source/remote/remote.dart'
    as _i20;
import '../../feature/add_ad/presentation/state/add_ad_bloc.dart' as _i3;
import '../../feature/auth/application/facade.dart' as _i24;
import '../../feature/auth/domain/repo/repo.dart' as _i22;
import '../../feature/auth/infrastructure/data_source/remote/remote.dart'
    as _i21;
import '../../feature/auth/infrastructure/repo/repo_impl.dart' as _i23;
import '../../feature/auth/presentation/state/auth_bloc.dart' as _i25;
import '../../feature/notification/application/facade.dart' as _i9;
import '../../feature/notification/domain/repo/repo.dart' as _i10;
import '../../feature/notification/infrastructure/data_source/remote/remote.dart'
    as _i11;
import '../../feature/notification/presentation/state/notification_bloc.dart'
    as _i8;
import '../../feature/profile/application/facade.dart' as _i13;
import '../../feature/profile/domain/repo/repo.dart' as _i14;
import '../../feature/profile/infrastructure/data_source/remote/remote.dart'
    as _i15;
import '../../feature/profile/presentation/state/profile_bloc.dart' as _i12;
import '../../feature/search/application/facade.dart' as _i17;
import '../../feature/search/domain/repo/repo.dart' as _i18;
import '../../feature/search/infrastructure/data_source/remote/remote.dart'
    as _i19;
import '../../feature/search/presentation/state/search_bloc.dart' as _i16;
import '../service/http_client.dart' as _i7;

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
    gh.factory<_i3.AddAdBloc>(() => _i3.AddAdBloc());
    gh.factory<_i4.AddAdFacade>(
        () => _i4.AddAdFacade(repo: gh<_i5.IAddAdRepo>()));
    gh.singleton<_i6.Dio>(_i7.DioClient());
    gh.factory<_i8.NotificationBloc>(() => _i8.NotificationBloc());
    gh.factory<_i9.NotificationFacade>(
        () => _i9.NotificationFacade(repo: gh<_i10.INotificationRepo>()));
    gh.factory<_i11.NotificationRemote>(
        () => _i11.NotificationRemote(gh<_i6.Dio>()));
    gh.factory<_i12.ProfileBloc>(() => _i12.ProfileBloc());
    gh.factory<_i13.ProfileFacade>(
        () => _i13.ProfileFacade(repo: gh<_i14.IProfileRepo>()));
    gh.factory<_i15.ProfileRemote>(() => _i15.ProfileRemote(gh<_i6.Dio>()));
    gh.factory<_i16.SearchBloc>(() => _i16.SearchBloc());
    gh.factory<_i17.SearchFacade>(
        () => _i17.SearchFacade(repo: gh<_i18.ISearchRepo>()));
    gh.factory<_i19.SearchRemote>(() => _i19.SearchRemote(gh<_i6.Dio>()));
    gh.factory<_i20.AddAdRemote>(() => _i20.AddAdRemote(gh<_i6.Dio>()));
    gh.factory<_i21.AuthRemote>(() => _i21.AuthRemote(gh<_i6.Dio>()));
    gh.factory<_i22.IAuthRepo>(
        () => _i23.AuthRepoImpl(remote: gh<_i21.AuthRemote>()));
    gh.factory<_i24.AuthFacade>(
        () => _i24.AuthFacade(repo: gh<_i22.IAuthRepo>()));
    gh.singleton<_i25.AuthBloc>(
      _i25.AuthBloc(gh<_i24.AuthFacade>()),
      dispose: (i) => i.dispose(),
    );
    return this;
  }
}
