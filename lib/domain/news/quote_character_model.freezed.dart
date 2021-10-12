// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'quote_character_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuoteCharacterModel _$QuoteCharacterModelFromJson(Map<String, dynamic> json) {
  return _QuoteCharacterModel.fromJson(json);
}

/// @nodoc
class _$QuoteCharacterModelTearOff {
  const _$QuoteCharacterModelTearOff();

  _QuoteCharacterModel call(
      {required String? name,
      required String? slug,
      required QuoteHouseModel? house}) {
    return _QuoteCharacterModel(
      name: name,
      slug: slug,
      house: house,
    );
  }

  QuoteCharacterModel fromJson(Map<String, Object> json) {
    return QuoteCharacterModel.fromJson(json);
  }
}

/// @nodoc
const $QuoteCharacterModel = _$QuoteCharacterModelTearOff();

/// @nodoc
mixin _$QuoteCharacterModel {
  String? get name => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  QuoteHouseModel? get house => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuoteCharacterModelCopyWith<QuoteCharacterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuoteCharacterModelCopyWith<$Res> {
  factory $QuoteCharacterModelCopyWith(
          QuoteCharacterModel value, $Res Function(QuoteCharacterModel) then) =
      _$QuoteCharacterModelCopyWithImpl<$Res>;
  $Res call({String? name, String? slug, QuoteHouseModel? house});

  $QuoteHouseModelCopyWith<$Res>? get house;
}

/// @nodoc
class _$QuoteCharacterModelCopyWithImpl<$Res>
    implements $QuoteCharacterModelCopyWith<$Res> {
  _$QuoteCharacterModelCopyWithImpl(this._value, this._then);

  final QuoteCharacterModel _value;
  // ignore: unused_field
  final $Res Function(QuoteCharacterModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? slug = freezed,
    Object? house = freezed,
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
      house: house == freezed
          ? _value.house
          : house // ignore: cast_nullable_to_non_nullable
              as QuoteHouseModel?,
    ));
  }

  @override
  $QuoteHouseModelCopyWith<$Res>? get house {
    if (_value.house == null) {
      return null;
    }

    return $QuoteHouseModelCopyWith<$Res>(_value.house!, (value) {
      return _then(_value.copyWith(house: value));
    });
  }
}

/// @nodoc
abstract class _$QuoteCharacterModelCopyWith<$Res>
    implements $QuoteCharacterModelCopyWith<$Res> {
  factory _$QuoteCharacterModelCopyWith(_QuoteCharacterModel value,
          $Res Function(_QuoteCharacterModel) then) =
      __$QuoteCharacterModelCopyWithImpl<$Res>;
  @override
  $Res call({String? name, String? slug, QuoteHouseModel? house});

  @override
  $QuoteHouseModelCopyWith<$Res>? get house;
}

/// @nodoc
class __$QuoteCharacterModelCopyWithImpl<$Res>
    extends _$QuoteCharacterModelCopyWithImpl<$Res>
    implements _$QuoteCharacterModelCopyWith<$Res> {
  __$QuoteCharacterModelCopyWithImpl(
      _QuoteCharacterModel _value, $Res Function(_QuoteCharacterModel) _then)
      : super(_value, (v) => _then(v as _QuoteCharacterModel));

  @override
  _QuoteCharacterModel get _value => super._value as _QuoteCharacterModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? slug = freezed,
    Object? house = freezed,
  }) {
    return _then(_QuoteCharacterModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: slug == freezed
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      house: house == freezed
          ? _value.house
          : house // ignore: cast_nullable_to_non_nullable
              as QuoteHouseModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuoteCharacterModel extends _QuoteCharacterModel {
  const _$_QuoteCharacterModel(
      {required this.name, required this.slug, required this.house})
      : super._();

  factory _$_QuoteCharacterModel.fromJson(Map<String, dynamic> json) =>
      _$$_QuoteCharacterModelFromJson(json);

  @override
  final String? name;
  @override
  final String? slug;
  @override
  final QuoteHouseModel? house;

  @override
  String toString() {
    return 'QuoteCharacterModel(name: $name, slug: $slug, house: $house)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QuoteCharacterModel &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.slug, slug) ||
                const DeepCollectionEquality().equals(other.slug, slug)) &&
            (identical(other.house, house) ||
                const DeepCollectionEquality().equals(other.house, house)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(slug) ^
      const DeepCollectionEquality().hash(house);

  @JsonKey(ignore: true)
  @override
  _$QuoteCharacterModelCopyWith<_QuoteCharacterModel> get copyWith =>
      __$QuoteCharacterModelCopyWithImpl<_QuoteCharacterModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuoteCharacterModelToJson(this);
  }
}

abstract class _QuoteCharacterModel extends QuoteCharacterModel {
  const factory _QuoteCharacterModel(
      {required String? name,
      required String? slug,
      required QuoteHouseModel? house}) = _$_QuoteCharacterModel;
  const _QuoteCharacterModel._() : super._();

  factory _QuoteCharacterModel.fromJson(Map<String, dynamic> json) =
      _$_QuoteCharacterModel.fromJson;

  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get slug => throw _privateConstructorUsedError;
  @override
  QuoteHouseModel? get house => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$QuoteCharacterModelCopyWith<_QuoteCharacterModel> get copyWith =>
      throw _privateConstructorUsedError;
}
