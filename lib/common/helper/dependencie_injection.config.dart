// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i12;

import '../../feature/add_ad/application/facade.dart' as _i28;
import '../../feature/add_ad/domain/repo/repo.dart' as _i15;
import '../../feature/add_ad/infrastructure/data_source/remote/remote.dart'
    as _i13;
import '../../feature/add_ad/infrastructure/repo/repo_impl.dart' as _i16;
import '../../feature/add_ad/presentation/state/add_ad_bloc.dart' as _i3;
import '../../feature/auth/application/facade.dart' as _i31;
import '../../feature/auth/domain/repo/repo.dart' as _i29;
import '../../feature/auth/infrastructure/data_source/remote/remote.dart'
    as _i14;
import '../../feature/auth/infrastructure/repo/repo_impl.dart' as _i30;
import '../../feature/auth/presentation/state/auth_bloc.dart' as _i32;
import '../../feature/notification/application/facade.dart' as _i25;
import '../../feature/notification/domain/repo/repo.dart' as _i17;
import '../../feature/notification/infrastructure/data_source/remote/remote.dart'
    as _i7;
import '../../feature/notification/infrastructure/repo/repo_impl.dart' as _i18;
import '../../feature/notification/presentation/state/notification_bloc.dart'
    as _i6;
import '../../feature/profile/application/facade.dart' as _i26;
import '../../feature/profile/domain/repo/repo.dart' as _i19;
import '../../feature/profile/infrastructure/data_source/remote/remote.dart'
    as _i9;
import '../../feature/profile/infrastructure/repo/repo_impl.dart' as _i20;
import '../../feature/profile/presentation/state/profile_bloc.dart' as _i8;
import '../../feature/search/application/facade.dart' as _i27;
import '../../feature/search/domain/repo/repo.dart' as _i21;
import '../../feature/search/infrastructure/data_source/remote/remote.dart'
    as _i11;
import '../../feature/search/infrastructure/repo/repo_impl.dart' as _i22;
import '../../feature/search/presentation/state/search_bloc.dart' as _i10;
import '../service/http_client.dart' as _i5;
import '../service/storage/i_storage_service.dart' as _i23;
import '../service/storage/storage_service.dart' as _i24;
import 'dependencie_injection.dart' as _i33;

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
    final registerModule = _$RegisterModule();
    gh.factory<_i3.AddAdBloc>(() => _i3.AddAdBloc());
    gh.singleton<_i4.Dio>(_i5.DioClient());
    gh.factory<_i6.NotificationBloc>(() => _i6.NotificationBloc());
    gh.factory<_i7.NotificationRemote>(
        () => _i7.NotificationRemote(gh<_i4.Dio>()));
    gh.factory<_i8.ProfileBloc>(() => _i8.ProfileBloc());
    gh.factory<_i9.ProfileRemote>(() => _i9.ProfileRemote(gh<_i4.Dio>()));
    gh.factory<_i10.SearchBloc>(() => _i10.SearchBloc());
    gh.factory<_i11.SearchRemote>(() => _i11.SearchRemote(gh<_i4.Dio>()));
    gh.factoryAsync<_i12.SharedPreferences>(() => registerModule.prefs);
    gh.factory<_i13.AddAdRemote>(() => _i13.AddAdRemote(gh<_i4.Dio>()));
    gh.factory<_i14.AuthRemote>(() => _i14.AuthRemote(gh<_i4.Dio>()));
    gh.factory<_i15.IAddAdRepo>(
        () => _i16.AddAdRepoImpl(remote: gh<_i13.AddAdRemote>()));
    gh.factory<_i17.INotificationRepo>(
        () => _i18.NotificationRepoImpl(remote: gh<_i7.NotificationRemote>()));
    gh.factory<_i19.IProfileRepo>(
        () => _i20.ProfileRepoImpl(remote: gh<_i9.ProfileRemote>()));
    gh.factory<_i21.ISearchRepo>(
        () => _i22.SearchRepoImpl(remote: gh<_i11.SearchRemote>()));
    gh.lazySingletonAsync<_i23.IStorageService>(() async =>
        _i24.StorageService(await getAsync<_i12.SharedPreferences>()));
    gh.factory<_i25.NotificationFacade>(
        () => _i25.NotificationFacade(repo: gh<_i17.INotificationRepo>()));
    gh.factory<_i26.ProfileFacade>(
        () => _i26.ProfileFacade(repo: gh<_i19.IProfileRepo>()));
    gh.factory<_i27.SearchFacade>(
        () => _i27.SearchFacade(repo: gh<_i21.ISearchRepo>()));
    gh.factory<_i28.AddAdFacade>(
        () => _i28.AddAdFacade(repo: gh<_i15.IAddAdRepo>()));
    gh.factoryAsync<_i29.IAuthRepo>(() async => _i30.AuthRepoImpl(
          remote: gh<_i14.AuthRemote>(),
          storageService: await getAsync<_i23.IStorageService>(),
        ));
    gh.factoryAsync<_i31.AuthFacade>(
        () async => _i31.AuthFacade(repo: await getAsync<_i29.IAuthRepo>()));
    gh.singletonAsync<_i32.AuthBloc>(
      () async => _i32.AuthBloc(await getAsync<_i31.AuthFacade>()),
      dispose: (i) => i.dispose(),
    );
    return this;
  }
}

class _$RegisterModule extends _i33.RegisterModule {}
