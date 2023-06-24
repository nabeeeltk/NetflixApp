import 'package:freezed_annotation/freezed_annotation.dart';
part 'main_failuers.freezed.dart';
@freezed
class MainFailure with _$MainFailure{
  const factory MainFailure.calientFailure() = _ClaintFailure;
  const factory MainFailure.serverFailure() = _ServerFailure;
}