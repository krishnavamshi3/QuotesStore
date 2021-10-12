// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'quote_house_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuoteHouseModel _$QuoteHouseModelFromJson(Map<String, dynamic> json) {
  return _QuoteHouseModel.fromJson(json);
}

/// @nodoc
class _$QuoteHouseModelTearOff {
  const _$QuoteHouseModelTearOff();

  _QuoteHouseModel call({required String? name, required String? slug}) {
    return _QuoteHouseModel(
      name: name,
      slug: slug,
    );
  }

  QuoteHouseModel fromJson(Map<String, Object> json) {
    return QuoteHouseModel.fromJson(json);
  }
}

/// @nodoc
const $QuoteHouseModel = _$QuoteHouseModelTearOff();

/// @nodoc
mixin _$QuoteHouseModel {
  String? get name => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuoteHouseModelCopyWith<QuoteHouseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuoteHouseModelCopyWith<$Res> {
  factory $QuoteHouseModelCopyWith(
          QuoteHouseModel value, $Res Function(QuoteHouseModel) then) =
      _$QuoteHouseModelCopyWithImpl<$Res>;
  $Res call({String? name, String? slug});
}

/// @nodoc
class _$QuoteHouseModelCopyWithImpl<$Res>
    implements $QuoteHouseModelCopyWith<$Res> {
  _$QuoteHouseModelCopyWithImpl(this._value, this._then);

  final QuoteHouseModel _value;
  // ignore: unused_field
  final $Res Function(QuoteHouseModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? slug = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: slug == freezed
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$QuoteHouseModelCopyWith<$Res>
    implements $QuoteHouseModelCopyWith<$Res> {
  factory _$QuoteHouseModelCopyWith(
          _QuoteHouseModel value, $Res Function(_QuoteHouseModel) then) =
      __$QuoteHouseModelCopyWithImpl<$Res>;
  @override
  $Res call({String? name, String? slug});
}

/// @nodoc
class __$QuoteHouseModelCopyWithImpl<$Res>
    extends _$QuoteHouseModelCopyWithImpl<$Res>
    implements _$QuoteHouseModelCopyWith<$Res> {
  __$QuoteHouseModelCopyWithImpl(
      _QuoteHouseModel _value, $Res Function(_QuoteHouseModel) _then)
      : super(_value, (v) => _then(v as _QuoteHouseModel));

  @override
  _QuoteHouseModel get _value => super._value as _QuoteHouseModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? slug = freezed,
  }) {
    return _then(_QuoteHouseModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: slug == freezed
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuoteHouseModel extends _QuoteHouseModel {
  const _$_QuoteHouseModel({required this.name, required this.slug})
      : super._();

  factory _$_QuoteHouseModel.fromJson(Map<String, dynamic> json) =>
      _$$_QuoteHouseModelFromJson(json);

  @override
  final String? name;
  @override
  final String? slug;

  @override
  String toString() {
    return 'QuoteHouseModel(name: $name, slug: $slug)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QuoteHouseModel &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.slug, slug) ||
                const DeepCollectionEquality().equals(other.slug, slug)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(slug);

  @JsonKey(ignore: true)
  @override
  _$QuoteHouseModelCopyWith<_QuoteHouseModel> get copyWith =>
      __$QuoteHouseModelCopyWithImpl<_QuoteHouseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuoteHouseModelToJson(this);
  }
}

abstract class _QuoteHouseModel extends QuoteHouseModel {
  const factory _QuoteHouseModel(
      {required String? name, required String? slug}) = _$_QuoteHouseModel;
  const _QuoteHouseModel._() : super._();

  factory _QuoteHouseModel.fromJson(Map<String, dynamic> json) =
      _$_QuoteHouseModel.fromJson;

  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get slug => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$QuoteHouseModelCopyWith<_QuoteHouseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
