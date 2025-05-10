import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflixx/domain/downloads/i_downloads_repo.dart';
import 'package:netflixx/domain/downloads/models/downloads.dart';
import 'package:netflixx/domain/failures/main_failures.dart';

part 'downloads_event.dart';
part 'downloads_state.dart';
part 'downloads_bloc.freezed.dart';

@injectable
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final IDownloadsRepo downloadsRepo;
  DownloadsBloc(this.downloadsRepo) : super(DownloadsState.inital()) {
    on<_GetDownloadImages>((event, emit) async {
      //what happens onfirst  emit
      emit(
        state.copyWith(
          isLoading: true,
          downloadsFailureorSuccessoption: none(),
        ),
      );

      ///next api fetchig
      final Either<MainFailure, List<Downloads>> downloadsOption =
          await downloadsRepo.getDownloadImages();
      print(downloadsOption.toString());
      emit(
        downloadsOption.fold(
          (failure) => state.copyWith(
            isLoading: false,
            downloadsFailureorSuccessoption: Some(Left(failure)),
          ),
          (success) => state.copyWith(
            isLoading: false,
            downloads: success,
            downloadsFailureorSuccessoption: Some(Right(success)),
          ),
        ),
      );
    });
  }
}
