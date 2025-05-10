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
import 'package:netflixx/application/bloc/downloads_bloc.dart' as _i637;
import 'package:netflixx/domain/downloads/i_downloads_repo.dart' as _i770;
import 'package:netflixx/infrastructure/downloads/downloads_repository.dart'
    as _i509;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i770.IDownloadsRepo>(() => _i509.DownloadsRepository());
    gh.factory<_i637.DownloadsBloc>(
      () => _i637.DownloadsBloc(gh<_i770.IDownloadsRepo>()),
    );
    return this;
  }
}
