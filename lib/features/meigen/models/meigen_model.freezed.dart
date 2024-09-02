// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meigen_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Meigen _$MeigenFromJson(Map<String, dynamic> json) {
  return _Meigen.fromJson(json);
}

/// @nodoc
mixin _$Meigen {
  String get meigen => throw _privateConstructorUsedError;
  String get auther => throw _privateConstructorUsedError;

  /// Serializes this Meigen to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Meigen
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MeigenCopyWith<Meigen> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeigenCopyWith<$Res> {
  factory $MeigenCopyWith(Meigen value, $Res Function(Meigen) then) =
      _$MeigenCopyWithImpl<$Res, Meigen>;
  @useResult
  $Res call({String meigen, String auther});
}

/// @nodoc
class _$MeigenCopyWithImpl<$Res, $Val extends Meigen>
    implements $MeigenCopyWith<$Res> {
  _$MeigenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Meigen
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meigen = null,
    Object? auther = null,
  }) {
    return _then(_value.copyWith(
      meigen: null == meigen
          ? _value.meigen
          : meigen // ignore: cast_nullable_to_non_nullable
              as String,
      auther: null == auther
          ? _value.auther
          : auther // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MeigenImplCopyWith<$Res> implements $MeigenCopyWith<$Res> {
  factory _$$MeigenImplCopyWith(
          _$MeigenImpl value, $Res Function(_$MeigenImpl) then) =
      __$$MeigenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String meigen, String auther});
}

/// @nodoc
class __$$MeigenImplCopyWithImpl<$Res>
    extends _$MeigenCopyWithImpl<$Res, _$MeigenImpl>
    implements _$$MeigenImplCopyWith<$Res> {
  __$$MeigenImplCopyWithImpl(
      _$MeigenImpl _value, $Res Function(_$MeigenImpl) _then)
      : super(_value, _then);

  /// Create a copy of Meigen
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meigen = null,
    Object? auther = null,
  }) {
    return _then(_$MeigenImpl(
      meigen: null == meigen
          ? _value.meigen
          : meigen // ignore: cast_nullable_to_non_nullable
              as String,
      auther: null == auther
          ? _value.auther
          : auther // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeigenImpl implements _Meigen {
  const _$MeigenImpl({required this.meigen, required this.auther});

  factory _$MeigenImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeigenImplFromJson(json);

  @override
  final String meigen;
  @override
  final String auther;

  @override
  String toString() {
    return 'Meigen(meigen: $meigen, auther: $auther)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeigenImpl &&
            (identical(other.meigen, meigen) || other.meigen == meigen) &&
            (identical(other.auther, auther) || other.auther == auther));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, meigen, auther);

  /// Create a copy of Meigen
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MeigenImplCopyWith<_$MeigenImpl> get copyWith =>
      __$$MeigenImplCopyWithImpl<_$MeigenImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeigenImplToJson(
      this,
    );
  }
}

abstract class _Meigen implements Meigen {
  const factory _Meigen(
      {required final String meigen,
      required final String auther}) = _$MeigenImpl;

  factory _Meigen.fromJson(Map<String, dynamic> json) = _$MeigenImpl.fromJson;

  @override
  String get meigen;
  @override
  String get auther;

  /// Create a copy of Meigen
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MeigenImplCopyWith<_$MeigenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
