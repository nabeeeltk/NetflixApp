import 'package:dartz/dartz.dart';
import 'package:netflixapp/domain/core/failures/main_failuers.dart';
import 'package:netflixapp/domain/download/model/downloads.dart';

abstract class DownloadsRepo{
  Future<Either<MainFailure,List<Download>>>getDownloadImages();
}