import 'package:freezed_annotation/freezed_annotation.dart';

part 'other_model.freezed.dart';

@freezed
class OtherUser with _$OtherUser {
  const factory OtherUser(
      {required String profilePhotoUrl,
      required DateTime lastOnline}) = _OtherUser;
}
