import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_token.freezed.dart';
part 'auth_token.g.dart';

@freezed
abstract class AuthToken with _$AuthToken {

  const factory AuthToken({
    String? accessToken,
  }) = _AuthToken;

  factory AuthToken.fromJson(dynamic json) => _$AuthTokenFromJson(json);
}
