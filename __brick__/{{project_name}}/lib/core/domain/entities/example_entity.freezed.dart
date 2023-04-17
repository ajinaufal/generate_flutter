// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'example_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExampleEntity {
  int? get count => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  dynamic? get previous => throw _privateConstructorUsedError;
  List<ResultEntity>? get results => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExampleEntityCopyWith<ExampleEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExampleEntityCopyWith<$Res> {
  factory $ExampleEntityCopyWith(
          ExampleEntity value, $Res Function(ExampleEntity) then) =
      _$ExampleEntityCopyWithImpl<$Res, ExampleEntity>;
  @useResult
  $Res call(
      {int? count,
      String? next,
      dynamic? previous,
      List<ResultEntity>? results});
}

/// @nodoc
class _$ExampleEntityCopyWithImpl<$Res, $Val extends ExampleEntity>
    implements $ExampleEntityCopyWith<$Res> {
  _$ExampleEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as dynamic?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ResultEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExampleEntityCopyWith<$Res>
    implements $ExampleEntityCopyWith<$Res> {
  factory _$$_ExampleEntityCopyWith(
          _$_ExampleEntity value, $Res Function(_$_ExampleEntity) then) =
      __$$_ExampleEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? count,
      String? next,
      dynamic? previous,
      List<ResultEntity>? results});
}

/// @nodoc
class __$$_ExampleEntityCopyWithImpl<$Res>
    extends _$ExampleEntityCopyWithImpl<$Res, _$_ExampleEntity>
    implements _$$_ExampleEntityCopyWith<$Res> {
  __$$_ExampleEntityCopyWithImpl(
      _$_ExampleEntity _value, $Res Function(_$_ExampleEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = freezed,
  }) {
    return _then(_$_ExampleEntity(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as dynamic?,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ResultEntity>?,
    ));
  }
}

/// @nodoc

class _$_ExampleEntity implements _ExampleEntity {
  const _$_ExampleEntity(
      {this.count, this.next, this.previous, final List<ResultEntity>? results})
      : _results = results;

  @override
  final int? count;
  @override
  final String? next;
  @override
  final dynamic? previous;
  final List<ResultEntity>? _results;
  @override
  List<ResultEntity>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ExampleEntity(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExampleEntity &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.next, next) || other.next == next) &&
            const DeepCollectionEquality().equals(other.previous, previous) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      count,
      next,
      const DeepCollectionEquality().hash(previous),
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExampleEntityCopyWith<_$_ExampleEntity> get copyWith =>
      __$$_ExampleEntityCopyWithImpl<_$_ExampleEntity>(this, _$identity);
}

abstract class _ExampleEntity implements ExampleEntity {
  const factory _ExampleEntity(
      {final int? count,
      final String? next,
      final dynamic? previous,
      final List<ResultEntity>? results}) = _$_ExampleEntity;

  @override
  int? get count;
  @override
  String? get next;
  @override
  dynamic? get previous;
  @override
  List<ResultEntity>? get results;
  @override
  @JsonKey(ignore: true)
  _$$_ExampleEntityCopyWith<_$_ExampleEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ResultEntity {
  String? get name => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResultEntityCopyWith<ResultEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultEntityCopyWith<$Res> {
  factory $ResultEntityCopyWith(
          ResultEntity value, $Res Function(ResultEntity) then) =
      _$ResultEntityCopyWithImpl<$Res, ResultEntity>;
  @useResult
  $Res call({String? name, String? url});
}

/// @nodoc
class _$ResultEntityCopyWithImpl<$Res, $Val extends ResultEntity>
    implements $ResultEntityCopyWith<$Res> {
  _$ResultEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResultEntityCopyWith<$Res>
    implements $ResultEntityCopyWith<$Res> {
  factory _$$_ResultEntityCopyWith(
          _$_ResultEntity value, $Res Function(_$_ResultEntity) then) =
      __$$_ResultEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? url});
}

/// @nodoc
class __$$_ResultEntityCopyWithImpl<$Res>
    extends _$ResultEntityCopyWithImpl<$Res, _$_ResultEntity>
    implements _$$_ResultEntityCopyWith<$Res> {
  __$$_ResultEntityCopyWithImpl(
      _$_ResultEntity _value, $Res Function(_$_ResultEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_ResultEntity(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ResultEntity implements _ResultEntity {
  const _$_ResultEntity({this.name, this.url});

  @override
  final String? name;
  @override
  final String? url;

  @override
  String toString() {
    return 'ResultEntity(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResultEntity &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResultEntityCopyWith<_$_ResultEntity> get copyWith =>
      __$$_ResultEntityCopyWithImpl<_$_ResultEntity>(this, _$identity);
}

abstract class _ResultEntity implements ResultEntity {
  const factory _ResultEntity({final String? name, final String? url}) =
      _$_ResultEntity;

  @override
  String? get name;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$_ResultEntityCopyWith<_$_ResultEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
