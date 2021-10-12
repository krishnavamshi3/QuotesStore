// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'quote_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuoteModel _$QuoteModelFromJson(Map<String, dynamic> json) {
  return _QuoteModel.fromJson(json);
}

/// @nodoc
class _$QuoteModelTearOff {
  const _$QuoteModelTearOff();

  _QuoteModel call(
      {required String? sentence, required QuoteCharacterModel? character}) {
    return _QuoteModel(
      sentence: sentence,
      character: character,
    );
  }

  QuoteModel fromJson(Map<String, Object> json) {
    return QuoteModel.fromJson(json);
  }
}

/// @nodoc
const $QuoteModel = _$QuoteModelTearOff();

/// @nodoc
mixin _$QuoteModel {
  String? get sentence => throw _privateConstructorUsedError;
  QuoteCharacterModel? get character => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuoteModelCopyWith<QuoteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuoteModelCopyWith<$Res> {
  factory $QuoteModelCopyWith(
          QuoteModel value, $Res Function(QuoteModel) then) =
      _$QuoteModelCopyWithImpl<$Res>;
  $Res call({String? sentence, QuoteCharacterModel? character});

  $QuoteCharacterModelCopyWith<$Res>? get character;
}

/// @nodoc
class _$QuoteModelCopyWithImpl<$Res> implements $QuoteModelCopyWith<$Res> {
  _$QuoteModelCopyWithImpl(this._value, this._then);

  final QuoteModel _value;
  // ignore: unused_field
  final $Res Function(QuoteModel) _then;

  @override
  $Res call({
    Object? sentence = freezed,
    Object? character = freezed,
  }) {
    return _then(_value.copyWith(
      sentence: sentence == freezed
          ? _value.sentence
          : sentence // ignore: cast_nullable_to_non_nullable
              as String?,
      character: character == freezed
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as QuoteCharacterModel?,
    ));
  }

  @override
  $QuoteCharacterModelCopyWith<$Res>? get character {
    if (_value.character == null) {
      return null;
    }

    return $QuoteCharacterModelCopyWith<$Res>(_value.character!, (value) {
      return _then(_value.copyWith(character: value));
    });
  }
}

/// @nodoc
abstract class _$QuoteModelCopyWith<$Res> implements $QuoteModelCopyWith<$Res> {
  factory _$QuoteModelCopyWith(
          _QuoteModel value, $Res Function(_QuoteModel) then) =
      __$QuoteModelCopyWithImpl<$Res>;
  @override
  $Res call({String? sentence, QuoteCharacterModel? character});

  @override
  $QuoteCharacterModelCopyWith<$Res>? get character;
}

/// @nodoc
class __$QuoteModelCopyWithImpl<$Res> extends _$QuoteModelCopyWithImpl<$Res>
    implements _$QuoteModelCopyWith<$Res> {
  __$QuoteModelCopyWithImpl(
      _QuoteModel _value, $Res Function(_QuoteModel) _then)
      : super(_value, (v) => _then(v as _QuoteModel));

  @override
  _QuoteModel get _value => super._value as _QuoteModel;

  @override
  $Res call({
    Object? sentence = freezed,
    Object? character = freezed,
  }) {
    return _then(_QuoteModel(
      sentence: sentence == freezed
          ? _value.sentence
          : sentence // ignore: cast_nullable_to_non_nullable
              as String?,
      character: character == freezed
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as QuoteCharacterModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuoteModel extends _QuoteModel {
  const _$_QuoteModel({required this.sentence, required this.character})
      : super._();

  factory _$_QuoteModel.fromJson(Map<String, dynamic> json) =>
      _$$_QuoteModelFromJson(json);

  @override
  final String? sentence;
  @override
  final QuoteCharacterModel? character;

  @override
  String toString() {
    return 'QuoteModel(sentence: $sentence, character: $character)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QuoteModel &&
            (identical(other.sentence, sentence) ||
                const DeepCollectionEquality()
                    .equals(other.sentence, sentence)) &&
            (identical(other.character, character) ||
                const DeepCollectionEquality()
                    .equals(other.character, character)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(sentence) ^
      const DeepCollectionEquality().hash(character);

  @JsonKey(ignore: true)
  @override
  _$QuoteModelCopyWith<_QuoteModel> get copyWith =>
      __$QuoteModelCopyWithImpl<_QuoteModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuoteModelToJson(this);
  }
}

abstract class _QuoteModel extends QuoteModel {
  const factory _QuoteModel(
      {required String? sentence,
      required QuoteCharacterModel? character}) = _$_QuoteModel;
  const _QuoteModel._() : super._();

  factory _QuoteModel.fromJson(Map<String, dynamic> json) =
      _$_QuoteModel.fromJson;

  @override
  String? get sentence => throw _privateConstructorUsedError;
  @override
  QuoteCharacterModel? get character => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$QuoteModelCopyWith<_QuoteModel> get copyWith =>
      throw _privateConstructorUsedError;
}
