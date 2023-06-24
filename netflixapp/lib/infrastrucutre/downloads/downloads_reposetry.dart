import 'package:injectable/injectable.dart';
import 'package:netflixapp/domain/core/api_ends_point.dart';
import 'package:netflixapp/domain/download/model/downloads.dart';
import 'package:netflixapp/domain/core/failures/main_failuers.dart';
import 'package:dartz/dartz.dart';
import 'package:netflixapp/domain/download/model/i_downloads_repo.dart';
import 'package:dio/dio.dart';
@LazySingleton(as: DownloadsRepo)
class DownloadsRepositry implements DownloadsRepo {
  @override
  Future<Either<MainFailure, List<Download>>> getDownloadImages() async {
    try {
      final Response responce =
          await Dio(BaseOptions()).get(ApiEndPoint.downloads);
      if (responce.statusCode == 200 || responce.statusCode == 201) {
        final List<Download> downloadsList = [];
        for (final row in responce.data) {
          downloadsList.add(Download.fromJson(row as Map<String, dynamic>));
        }
        print(downloadsList);
        return Right(downloadsList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailure.calientFailure());
    }
  }
}
