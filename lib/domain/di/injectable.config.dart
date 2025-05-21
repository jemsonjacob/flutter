// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:netflixx/application/bloc/home_bloc_bloc.dart' as _i470;
import 'package:netflixx/application/downloads/downloads_bloc.dart' as _i16;
import 'package:netflixx/application/fastLaugh/fast_laugh_bloc.dart' as _i851;
import 'package:netflixx/application/hot_and_new/hot_new_bloc.dart' as _i201;
import 'package:netflixx/application/search/bloc/search_bloc.dart' as _i486;
import 'package:netflixx/domain/downloads/i_downloads_repo.dart' as _i770;
import 'package:netflixx/domain/new_and_hot/service/hot_and_new_service.dart'
    as _i665;
import 'package:netflixx/domain/search/search_service.dart' as _i950;
import 'package:netflixx/infrastructure/downloads/downloads_implementation.dart'
    as _i636;
import 'package:netflixx/infrastructure/new_and_hot/hot_and_new_implementatio.dart'
    as _i595;
import 'package:netflixx/infrastructure/search/search_implementation.dart'
    as _i458;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i770.IDownloadsRepo>(() => _i636.DownloadsRepository());
    gh.lazySingleton<_i950.SearchService>(() => _i458.SearchImplementation());
    gh.lazySingleton<_i665.HotAndNewService>(
      () => _i595.HotAndNewImplementation(),
    );
    gh.factory<_i486.SearchBloc>(
      () => _i486.SearchBloc(
        gh<_i770.IDownloadsRepo>(),
        gh<_i950.SearchService>(),
      ),
    );
    gh.factory<_i851.FastLaughBloc>(
      () => _i851.FastLaughBloc(gh<_i770.IDownloadsRepo>()),
    );
    gh.factory<_i16.DownloadsBloc>(
      () => _i16.DownloadsBloc(gh<_i770.IDownloadsRepo>()),
    );
    gh.factory<_i470.HomeBlocBloc>(
      () => _i470.HomeBlocBloc(gh<_i665.HotAndNewService>()),
    );
    gh.factory<_i201.HotNewBloc>(
      () => _i201.HotNewBloc(gh<_i665.HotAndNewService>()),
    );
    return this;
  }
}
