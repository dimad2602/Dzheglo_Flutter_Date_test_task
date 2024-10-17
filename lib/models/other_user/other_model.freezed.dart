// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'other_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OtherUser {
  String get profilePhotoUrl => throw _privateConstructorUsedError;
  DateTime get lastOnline => throw _privateConstructorUsedError;
  String? get lastMessage => throw _privateConstructorUsedError;
  bool? get mustCheck => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OtherUserCopyWith<OtherUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtherUserCopyWith<$Res> {
  factory $OtherUserCopyWith(OtherUser value, $Res Function(OtherUser) then) =
      _$OtherUserCopyWithImpl<$Res, OtherUser>;
  @useResult
  $Res call(
      {String profilePhotoUrl,
      DateTime lastOnline,
      String? lastMessage,
      bool? mustCheck});
}

/// @nodoc
class _$OtherUserCopyWithImpl<$Res, $Val extends OtherUser>
    implements $OtherUserCopyWith<$Res> {
  _$OtherUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profilePhotoUrl = null,
    Object? lastOnline = null,
    Object? lastMessage = freezed,
    Object? mustCheck = freezed,
  }) {
    return _then(_value.copyWith(
      profilePhotoUrl: null == profilePhotoUrl
          ? _value.profilePhotoUrl
          : profilePhotoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      lastOnline: null == lastOnline
          ? _value.lastOnline
          : lastOnline // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastMessage: freezed == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      mustCheck: freezed == mustCheck
          ? _value.mustCheck
          : mustCheck // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OtherUserImplCopyWith<$Res>
    implements $OtherUserCopyWith<$Res> {
  factory _$$OtherUserImplCopyWith(
          _$OtherUserImpl value, $Res Function(_$OtherUserImpl) then) =
      __$$OtherUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String profilePhotoUrl,
      DateTime lastOnline,
      String? lastMessage,
      bool? mustCheck});
}

/// @nodoc
class __$$OtherUserImplCopyWithImpl<$Res>
    extends _$OtherUserCopyWithImpl<$Res, _$OtherUserImpl>
    implements _$$OtherUserImplCopyWith<$Res> {
  __$$OtherUserImplCopyWithImpl(
      _$OtherUserImpl _value, $Res Function(_$OtherUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profilePhotoUrl = null,
    Object? lastOnline = null,
    Object? lastMessage = freezed,
    Object? mustCheck = freezed,
  }) {
    return _then(_$OtherUserImpl(
      profilePhotoUrl: null == profilePhotoUrl
          ? _value.profilePhotoUrl
          : profilePhotoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      lastOnline: null == lastOnline
          ? _value.lastOnline
          : lastOnline // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastMessage: freezed == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      mustCheck: freezed == mustCheck
          ? _value.mustCheck
          : mustCheck // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$OtherUserImpl implements _OtherUser {
  const _$OtherUserImpl(
      {required this.profilePhotoUrl,
      required this.lastOnline,
      this.lastMessage,
      this.mustCheck});

  @override
  final String profilePhotoUrl;
  @override
  final DateTime lastOnline;
  @override
  final String? lastMessage;
  @override
  final bool? mustCheck;

  @override
  String toString() {
    return 'OtherUser(profilePhotoUrl: $profilePhotoUrl, lastOnline: $lastOnline, lastMessage: $lastMessage, mustCheck: $mustCheck)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtherUserImpl &&
            (identical(other.profilePhotoUrl, profilePhotoUrl) ||
                other.profilePhotoUrl == profilePhotoUrl) &&
            (identical(other.lastOnline, lastOnline) ||
                other.lastOnline == lastOnline) &&
            (identical(other.lastMessage, lastMessage) ||
                other.lastMessage == lastMessage) &&
            (identical(other.mustCheck, mustCheck) ||
                other.mustCheck == mustCheck));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, profilePhotoUrl, lastOnline, lastMessage, mustCheck);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtherUserImplCopyWith<_$OtherUserImpl> get copyWith =>
      __$$OtherUserImplCopyWithImpl<_$OtherUserImpl>(this, _$identity);
}

abstract class _OtherUser implements OtherUser {
  const factory _OtherUser(
      {required final String profilePhotoUrl,
      required final DateTime lastOnline,
      final String? lastMessage,
      final bool? mustCheck}) = _$OtherUserImpl;

  @override
  String get profilePhotoUrl;
  @override
  DateTime get lastOnline;
  @override
  String? get lastMessage;
  @override
  bool? get mustCheck;
  @override
  @JsonKey(ignore: true)
  _$$OtherUserImplCopyWith<_$OtherUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
