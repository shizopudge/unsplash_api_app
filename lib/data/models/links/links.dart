import 'package:freezed_annotation/freezed_annotation.dart';

part 'links.freezed.dart';

part 'links.g.dart';

@freezed
class Links with _$Links {
  @JsonSerializable(explicitToJson: true)
  const factory Links({
    String? self,
    String? html,
    String? download,
  }) = _Links;

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);
}
