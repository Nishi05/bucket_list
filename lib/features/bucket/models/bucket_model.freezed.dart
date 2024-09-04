// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bucket_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Bucket _$BucketFromJson(Map<String, dynamic> json) {
  return _Bucket.fromJson(json);
}

/// @nodoc
mixin _$Bucket {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get scheduledAt => throw _privateConstructorUsedError;
  int get priority => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  DateTime? get completedAt => throw _privateConstructorUsedError;
  String? get completedDescription => throw _privateConstructorUsedError;

  /// Serializes this Bucket to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Bucket
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BucketCopyWith<Bucket> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BucketCopyWith<$Res> {
  factory $BucketCopyWith(Bucket value, $Res Function(Bucket) then) =
      _$BucketCopyWithImpl<$Res, Bucket>;
  @useResult
  $Res call(
      {int id,
      String title,
      String description,
      DateTime scheduledAt,
      int priority,
      DateTime createdAt,
      DateTime updatedAt,
      DateTime? completedAt,
      String? completedDescription});
}

/// @nodoc
class _$BucketCopyWithImpl<$Res, $Val extends Bucket>
    implements $BucketCopyWith<$Res> {
  _$BucketCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Bucket
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? scheduledAt = null,
    Object? priority = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? completedAt = freezed,
    Object? completedDescription = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      completedDescription: freezed == completedDescription
          ? _value.completedDescription
          : completedDescription // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BucketImplCopyWith<$Res> implements $BucketCopyWith<$Res> {
  factory _$$BucketImplCopyWith(
          _$BucketImpl value, $Res Function(_$BucketImpl) then) =
      __$$BucketImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String description,
      DateTime scheduledAt,
      int priority,
      DateTime createdAt,
      DateTime updatedAt,
      DateTime? completedAt,
      String? completedDescription});
}

/// @nodoc
class __$$BucketImplCopyWithImpl<$Res>
    extends _$BucketCopyWithImpl<$Res, _$BucketImpl>
    implements _$$BucketImplCopyWith<$Res> {
  __$$BucketImplCopyWithImpl(
      _$BucketImpl _value, $Res Function(_$BucketImpl) _then)
      : super(_value, _then);

  /// Create a copy of Bucket
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? scheduledAt = null,
    Object? priority = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? completedAt = freezed,
    Object? completedDescription = freezed,
  }) {
    return _then(_$BucketImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      completedDescription: freezed == completedDescription
          ? _value.completedDescription
          : completedDescription // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BucketImpl extends _Bucket {
  const _$BucketImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.scheduledAt,
      required this.priority,
      required this.createdAt,
      required this.updatedAt,
      this.completedAt,
      this.completedDescription})
      : super._();

  factory _$BucketImpl.fromJson(Map<String, dynamic> json) =>
      _$$BucketImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String description;
  @override
  final DateTime scheduledAt;
  @override
  final int priority;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final DateTime? completedAt;
  @override
  final String? completedDescription;

  @override
  String toString() {
    return 'Bucket(id: $id, title: $title, description: $description, scheduledAt: $scheduledAt, priority: $priority, createdAt: $createdAt, updatedAt: $updatedAt, completedAt: $completedAt, completedDescription: $completedDescription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BucketImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.scheduledAt, scheduledAt) ||
                other.scheduledAt == scheduledAt) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
            (identical(other.completedDescription, completedDescription) ||
                other.completedDescription == completedDescription));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      scheduledAt,
      priority,
      createdAt,
      updatedAt,
      completedAt,
      completedDescription);

  /// Create a copy of Bucket
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BucketImplCopyWith<_$BucketImpl> get copyWith =>
      __$$BucketImplCopyWithImpl<_$BucketImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BucketImplToJson(
      this,
    );
  }
}

abstract class _Bucket extends Bucket {
  const factory _Bucket(
      {required final int id,
      required final String title,
      required final String description,
      required final DateTime scheduledAt,
      required final int priority,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      final DateTime? completedAt,
      final String? completedDescription}) = _$BucketImpl;
  const _Bucket._() : super._();

  factory _Bucket.fromJson(Map<String, dynamic> json) = _$BucketImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get description;
  @override
  DateTime get scheduledAt;
  @override
  int get priority;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  DateTime? get completedAt;
  @override
  String? get completedDescription;

  /// Create a copy of Bucket
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BucketImplCopyWith<_$BucketImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
