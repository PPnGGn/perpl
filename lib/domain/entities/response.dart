part of 'entities.dart';

@freezed
abstract class ResponseEntity with _$ResponseEntity {
  const factory ResponseEntity({
    String? id,
    String? object,
    DateTime? created,
    String? provider,
    @Default('sonar') String model,
    required List<ChoicesEntity> choices,
  }) = _ResponseEntity;

  factory ResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$ResponseEntityFromJson(json);
}
