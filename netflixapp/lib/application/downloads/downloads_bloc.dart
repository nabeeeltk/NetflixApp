import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/core/failures/main_failuers.dart';
import '../../domain/download/model/downloads.dart';
import '../../domain/download/model/i_downloads_repo.dart';

part 'downloads_event.dart';
part 'downloads_state.dart';
part 'downloads_bloc.freezed.dart';
@injectable
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final DownloadsRepo _downloadsRepo;
  DownloadsBloc(this._downloadsRepo) : super(DownloadsState.inetial()) {
    on<_GetDownloadImages>((event, emit) async{
      emit(
        state.copyWith(isloading: true,
        downloadsFailureOrSuccessOption:none() ),
        );
     final Either<MainFailure,
      List<Download>>downloadsOption= await  _downloadsRepo.getDownloadImages();
        emit (downloadsOption.fold((failure) => state.copyWith(isloading: false,
        downloadsFailureOrSuccessOption: some(Left(failure))
        ),
         (success) => state.copyWith(isloading:false,
         Downloads:success ,
         downloadsFailureOrSuccessOption: some(right(success))),
        ),
        );
    }


    );
  }
}
