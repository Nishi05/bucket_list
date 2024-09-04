// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bucket_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BucketDto _$BucketDtoFromJson(Map<String, dynamic> json) {
  return _BucketDto.fromJson(json);
}

/// @nodoc
mixin _$BucketDto {
  int? get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get scheduledAt => throw _privateConstructorUsedError;
  int get priority => throw _privateConstructorUsedError;

  /// Serializes this BucketDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BucketDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BucketDtoCopyWith<BucketDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BucketDtoCopyWith<$Res> {
  factory $BucketDtoCopyWith(BucketDto value, $Res Function(BucketDto) then) =
      _$BucketDtoCopyWithImpl<$Res, BucketDto>;
  @useResult
  $Res call(
      {int? id,
      String title,
      String description,
      DateTime scheduledAt,
      int priority});
}

/// @nodoc
class _$BucketDtoCopyWithImpl<$Res, $Val extends BucketDto>
    implements $BucketDtoCopyWith<$Res> {
  _$BucketDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BucketDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? description = null,
    Object? scheduledAt = null,
    Object? priority = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      scheduledAt: null == scheduledAt
          ? _value.scheduledAt
          : scheduledAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BucketDtoImplCopyWith<$Res>
    implements $BucketDtoCopyWith<$Res> {
  factory _$$BucketDtoImplCopyWith(
          _$BucketDtoImpl value, $Res Function(_$BucketDtoImpl) then) =
      __$$BucketDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String title,
      String description,
      DateTime scheduledAt,
      int priority});
}

/// @nodoc
class __$$BucketDtoImplCopyWithImpl<$Res>
    extends _$BucketDtoCopyWithImpl<$Res, _$BucketDtoImpl>
    implements _$$BucketDtoImplCopyWith<$Res> {
  __$$BucketDtoImplCopyWithImpl(
      _$BucketDtoImpl _value, $Res Function(_$BucketDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of BucketDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? description = null,
    Object? scheduledAt = null,
    Object? priority = null,
  }) {
    return _then(_$BucketDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      scheduledAt: null == scheduledAt
          ? _value.scheduledAt
          : scheduledAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BucketDtoImpl implements _BucketDto {
  const _$BucketDtoImpl(
      {this.id,
      required this.title,
      required this.description,
      required this.scheduledAt,
      required this.priority});

  factory _$BucketDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BucketDtoImplFromJson(json);

  @override
  final int? id;
  @override
  final String title;
  @override
  final String description;
  @override
  final DateTime scheduledAt;
  @override
  final int priority;

  @override
  String toString() {
    return 'BucketDto(id: $id, title: $title, description: $description, scheduledAt: $scheduledAt, priority: $priority)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BucketDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.scheduledAt, scheduledAt) ||
                other.scheduledAt == scheduledAt) &&
            (identical(other.priority, priority) ||
                other.priority == priority));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, description, scheduledAt, priority);

  /// Create a copy of BucketDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BucketDtoImplCopyWith<_$BucketDtoImpl> get copyWith =>
      __$$BucketDtoImplCopyWithImpl<_$BucketDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BucketDtoImplToJson(
      this,
    );
  }
}

abstract class _BucketDto implements BucketDto {
  const factory _BucketDto(
      {final int? id,
      required final String title,
      required final String description,
      required final DateTime scheduledAt,
      required final int priority}) = _$BucketDtoImpl;

  factory _BucketDto.fromJson(Map<String, dynamic> json) =
      _$BucketDtoImpl.fromJson;

  @override
  int? get id;
  @override
  String get title;
  @override
  String get description;
  @override
  DateTime get scheduledAt;
  @override
  int get priority;

  /// Create a copy of BucketDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BucketDtoImplCopyWith<_$BucketDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
