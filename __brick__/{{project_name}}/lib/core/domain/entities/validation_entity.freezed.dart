// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'validation_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ValidationEntity {
  String? get messages => throw _privateConstructorUsedError;
  bool? get validation => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValidationEntityCopyWith<ValidationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidationEntityCopyWith<$Res> {
  factory $ValidationEntityCopyWith(
          ValidationEntity value, $Res Function(ValidationEntity) then) =
      _$ValidationEntityCopyWithImpl<$Res, ValidationEntity>;
  @useResult
  $Res call({String? messages, bool? validation});
}

/// @nodoc
class _$ValidationEntityCopyWithImpl<$Res, $Val extends ValidationEntity>
    implements $ValidationEntityCopyWith<$Res> {
  _$ValidationEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = freezed,
    Object? validation = freezed,
  }) {
    return _then(_value.copyWith(
      messages: freezed == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as String?,
      validation: freezed == validation
          ? _value.validation
          : validation // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ValidationEntityCopyWith<$Res>
    implements $ValidationEntityCopyWith<$Res> {
  factory _$$_ValidationEntityCopyWith(
          _$_ValidationEntity value, $Res Function(_$_ValidationEntity) then) =
      __$$_ValidationEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? messages, bool? validation});
}

/// @nodoc
class __$$_ValidationEntityCopyWithImpl<$Res>
    extends _$ValidationEntityCopyWithImpl<$Res, _$_ValidationEntity>
    implements _$$_ValidationEntityCopyWith<$Res> {
  __$$_ValidationEntityCopyWithImpl(
      _$_ValidationEntity _value, $Res Function(_$_ValidationEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = freezed,
    Object? validation = freezed,
  }) {
    return _then(_$_ValidationEntity(
      messages: freezed == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as String?,
      validation: freezed == validation
          ? _value.validation
          : validation // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_ValidationEntity implements _ValidationEntity {
  const _$_ValidationEntity({this.messages, this.validation});

  @override
  final String? messages;
  @override
  final bool? validation;

  @override
  String toString() {
    return 'ValidationEntity(messages: $messages, validation: $validation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ValidationEntity &&
            (identical(other.messages, messages) ||
                other.messages == messages) &&
            (identical(other.validation, validation) ||
                other.validation == validation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, messages, validation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ValidationEntityCopyWith<_$_ValidationEntity> get copyWith =>
      __$$_ValidationEntityCopyWithImpl<_$_ValidationEntity>(this, _$identity);
}

abstract class _ValidationEntity implements ValidationEntity {
  const factory _ValidationEntity(
      {final String? messages, final bool? validation}) = _$_ValidationEntity;

  @override
  String? get messages;
  @override
  bool? get validation;
  @override
  @JsonKey(ignore: true)
  _$$_ValidationEntityCopyWith<_$_ValidationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
