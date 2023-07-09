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
import 'package:shared_preferences/shared_preferences.dart' as _i14;

import '../../feature/add_ad/application/facade.dart' as _i31;
import '../../feature/add_ad/domain/repo/repo.dart' as _i18;
import '../../feature/add_ad/infrastructure/data_source/remote/remote.dart'
    as _i15;
import '../../feature/add_ad/infrastructure/repo/repo_impl.dart' as _i19;
import '../../feature/add_ad/presentation/state/add_ad_bloc.dart' as _i3;
import '../../feature/auth/application/facade.dart' as _i36;
import '../../feature/auth/domain/repo/repo.dart' as _i33;
import '../../feature/auth/infrastructure/data_source/remote/remote.dart'
    as _i16;
import '../../feature/auth/infrastructure/repo/repo_impl.dart' as _i34;
import '../../feature/auth/presentation/state/auth_bloc.dart' as _i37;
import '../../feature/home/application/facade.dart' as _i17;
import '../../feature/home/domain/repo/repo.dart' as _i7;
import '../../feature/home/infrastructure/data_source/remote/remote.dart'
    as _i6;
import '../../feature/home/infrastructure/repo/repo_impl.dart' as _i8;
import '../../feature/home/presentation/state/home_bloc.dart' as _i32;
import '../../feature/notification/application/facade.dart' as _i28;
import '../../feature/notification/domain/repo/repo.dart' as _i20;
import '../../feature/notification/infrastructure/data_source/remote/remote.dart'
    as _i10;
import '../../feature/notification/infrastructure/repo/repo_impl.dart' as _i21;
import '../../feature/notification/presentation/state/notification_bloc.dart'
    as _i9;
import '../../feature/profile/application/facade.dart' as _i29;
import '../../feature/profile/domain/repo/repo.dart' as _i22;
import '../../feature/profile/infrastructure/data_source/remote/remote.dart'
    as _i11;
import '../../feature/profile/infrastructure/repo/repo_impl.dart' as _i23;
import '../../feature/profile/presentation/state/profile_bloc.dart' as _i35;
import '../../feature/search/application/facade.dart' as _i30;
import '../../feature/search/domain/repo/repo.dart' as _i24;
import '../../feature/search/infrastructure/data_source/remote/remote.dart'
    as _i13;
import '../../feature/search/infrastructure/repo/repo_impl.dart' as _i25;
import '../../feature/search/presentation/state/search_bloc.dart' as _i12;
import '../service/http_client.dart' as _i5;
import '../service/storage/i_storage_service.dart' as _i26;
import '../service/storage/storage_service.dart' as _i27;
import 'dependencie_injection.dart' as _i38;

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
    gh.factory<_i6.HomeRemote>(() => _i6.HomeRemote(gh<_i4.Dio>()));
    gh.factory<_i7.IHomeRepo>(
        () => _i8.HomeRepoImpl(remote: gh<_i6.HomeRemote>()));
    gh.factory<_i9.NotificationBloc>(() => _i9.NotificationBloc());
    gh.factory<_i10.NotificationRemote>(
        () => _i10.NotificationRemote(gh<_i4.Dio>()));
    gh.factory<_i11.ProfileRemote>(() => _i11.ProfileRemote(gh<_i4.Dio>()));
    gh.factory<_i12.SearchBloc>(() => _i12.SearchBloc());
    gh.factory<_i13.SearchRemote>(() => _i13.SearchRemote(gh<_i4.Dio>()));
    gh.factoryAsync<_i14.SharedPreferences>(() => registerModule.prefs);
    gh.factory<_i15.AddAdRemote>(() => _i15.AddAdRemote(gh<_i4.Dio>()));
    gh.factory<_i16.AuthRemote>(() => _i16.AuthRemote(gh<_i4.Dio>()));
    gh.factory<_i17.HomeFacade>(
        () => _i17.HomeFacade(repo: gh<_i7.IHomeRepo>()));
    gh.factory<_i18.IAddAdRepo>(
        () => _i19.AddAdRepoImpl(remote: gh<_i15.AddAdRemote>()));
    gh.factory<_i20.INotificationRepo>(
        () => _i21.NotificationRepoImpl(remote: gh<_i10.NotificationRemote>()));
    gh.factory<_i22.IProfileRepo>(
        () => _i23.ProfileRepoImpl(remote: gh<_i11.ProfileRemote>()));
    gh.factory<_i24.ISearchRepo>(
        () => _i25.SearchRepoImpl(remote: gh<_i13.SearchRemote>()));
    gh.lazySingletonAsync<_i26.IStorageService>(() async =>
        _i27.StorageService(await getAsync<_i14.SharedPreferences>()));
    gh.factory<_i28.NotificationFacade>(
        () => _i28.NotificationFacade(repo: gh<_i20.INotificationRepo>()));
    gh.factory<_i29.ProfileFacade>(
        () => _i29.ProfileFacade(repo: gh<_i22.IProfileRepo>()));
    gh.factory<_i30.SearchFacade>(
        () => _i30.SearchFacade(repo: gh<_i24.ISearchRepo>()));
    gh.factory<_i31.AddAdFacade>(
        () => _i31.AddAdFacade(repo: gh<_i18.IAddAdRepo>()));
    gh.factory<_i32.HomeBloc>(() => _i32.HomeBloc(gh<_i17.HomeFacade>()));
    gh.factoryAsync<_i33.IAuthRepo>(() async => _i34.AuthRepoImpl(
          remote: gh<_i16.AuthRemote>(),
          storageService: await getAsync<_i26.IStorageService>(),
        ));
    gh.factory<_i35.ProfileBloc>(
        () => _i35.ProfileBloc(gh<_i29.ProfileFacade>()));
    gh.factoryAsync<_i36.AuthFacade>(
        () async => _i36.AuthFacade(repo: await getAsync<_i33.IAuthRepo>()));
    gh.singletonAsync<_i37.AuthBloc>(
      () async => _i37.AuthBloc(await getAsync<_i36.AuthFacade>()),
      dispose: (i) => i.dispose(),
    );
    return this;
  }
}

class _$RegisterModule extends _i38.RegisterModule {}
