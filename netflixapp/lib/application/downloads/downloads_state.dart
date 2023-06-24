part of 'downloads_bloc.dart';

@freezed
class DownloadsState with _$DownloadsState{
  const factory DownloadsState({
    required bool isloading,
    List<Download>? Downloads,
    required Option<Either<MainFailure,List<Download>>> downloadsFailureOrSuccessOption,
  }) = _DownloadsState;
  factory DownloadsState.inetial(){
    return  DownloadsState(isloading: false,
    downloadsFailureOrSuccessOption: None(),
    );
  }
  
}
