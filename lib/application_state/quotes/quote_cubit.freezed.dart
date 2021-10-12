// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'quote_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$QuoteStateTearOff {
  const _$QuoteStateTearOff();

  _QuoteState call(
      {required bool loadingQuotes,
      required List<QuoteModel> quoteModels,
      required int pageKey,
      required bool scroll}) {
    return _QuoteState(
      loadingQuotes: loadingQuotes,
      quoteModels: quoteModels,
      pageKey: pageKey,
      scroll: scroll,
    );
  }
}

/// @nodoc
const $QuoteState = _$QuoteStateTearOff();

/// @nodoc
mixin _$QuoteState {
  bool get loadingQuotes => throw _privateConstructorUsedError;
  List<QuoteModel> get quoteModels => throw _privateConstructorUsedError;
  int get pageKey => throw _privateConstructorUsedError;
  bool get scroll => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuoteStateCopyWith<QuoteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuoteStateCopyWith<$Res> {
  factory $QuoteStateCopyWith(
          QuoteState value, $Res Function(QuoteState) then) =
      _$QuoteStateCopyWithImpl<$Res>;
  $Res call(
      {bool loadingQuotes,
      List<QuoteModel> quoteModels,
      int pageKey,
      bool scroll});
}

/// @nodoc
class _$QuoteStateCopyWithImpl<$Res> implements $QuoteStateCopyWith<$Res> {
  _$QuoteStateCopyWithImpl(this._value, this._then);

  final QuoteState _value;
  // ignore: unused_field
  final $Res Function(QuoteState) _then;

  @override
  $Res call({
    Object? loadingQuotes = freezed,
    Object? quoteModels = freezed,
    Object? pageKey = freezed,
    Object? scroll = freezed,
  }) {
    return _then(_value.copyWith(
      loadingQuotes: loadingQuotes == freezed
          ? _value.loadingQuotes
          : loadingQuotes // ignore: cast_nullable_to_non_nullable
              as bool,
      quoteModels: quoteModels == freezed
          ? _value.quoteModels
          : quoteModels // ignore: cast_nullable_to_non_nullable
              as List<QuoteModel>,
      pageKey: pageKey == freezed
          ? _value.pageKey
          : pageKey // ignore: cast_nullable_to_non_nullable
              as int,
      scroll: scroll == freezed
          ? _value.scroll
          : scroll // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$QuoteStateCopyWith<$Res> implements $QuoteStateCopyWith<$Res> {
  factory _$QuoteStateCopyWith(
          _QuoteState value, $Res Function(_QuoteState) then) =
      __$QuoteStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool loadingQuotes,
      List<QuoteModel> quoteModels,
      int pageKey,
      bool scroll});
}

/// @nodoc
class __$QuoteStateCopyWithImpl<$Res> extends _$QuoteStateCopyWithImpl<$Res>
    implements _$QuoteStateCopyWith<$Res> {
  __$QuoteStateCopyWithImpl(
      _QuoteState _value, $Res Function(_QuoteState) _then)
      : super(_value, (v) => _then(v as _QuoteState));

  @override
  _QuoteState get _value => super._value as _QuoteState;

  @override
  $Res call({
    Object? loadingQuotes = freezed,
    Object? quoteModels = freezed,
    Object? pageKey = freezed,
    Object? scroll = freezed,
  }) {
    return _then(_QuoteState(
      loadingQuotes: loadingQuotes == freezed
          ? _value.loadingQuotes
          : loadingQuotes // ignore: cast_nullable_to_non_nullable
              as bool,
      quoteModels: quoteModels == freezed
          ? _value.quoteModels
          : quoteModels // ignore: cast_nullable_to_non_nullable
              as List<QuoteModel>,
      pageKey: pageKey == freezed
          ? _value.pageKey
          : pageKey // ignore: cast_nullable_to_non_nullable
              as int,
      scroll: scroll == freezed
          ? _value.scroll
          : scroll // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_QuoteState extends _QuoteState {
  const _$_QuoteState(
      {required this.loadingQuotes,
      required this.quoteModels,
      required this.pageKey,
      required this.scroll})
      : super._();

  @override
  final bool loadingQuotes;
  @override
  final List<QuoteModel> quoteModels;
  @override
  final int pageKey;
  @override
  final bool scroll;

  @override
  String toString() {
    return 'QuoteState(loadingQuotes: $loadingQuotes, quoteModels: $quoteModels, pageKey: $pageKey, scroll: $scroll)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QuoteState &&
            (identical(other.loadingQuotes, loadingQuotes) ||
                const DeepCollectionEquality()
                    .equals(other.loadingQuotes, loadingQuotes)) &&
            (identical(other.quoteModels, quoteModels) ||
                const DeepCollectionEquality()
                    .equals(other.quoteModels, quoteModels)) &&
            (identical(other.pageKey, pageKey) ||
                const DeepCollectionEquality()
                    .equals(other.pageKey, pageKey)) &&
            (identical(other.scroll, scroll) ||
                const DeepCollectionEquality().equals(other.scroll, scroll)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(loadingQuotes) ^
      const DeepCollectionEquality().hash(quoteModels) ^
      const DeepCollectionEquality().hash(pageKey) ^
      const DeepCollectionEquality().hash(scroll);

  @JsonKey(ignore: true)
  @override
  _$QuoteStateCopyWith<_QuoteState> get copyWith =>
      __$QuoteStateCopyWithImpl<_QuoteState>(this, _$identity);
}

abstract class _QuoteState extends QuoteState {
  const factory _QuoteState(
      {required bool loadingQuotes,
      required List<QuoteModel> quoteModels,
      required int pageKey,
      required bool scroll}) = _$_QuoteState;
  const _QuoteState._() : super._();

  @override
  bool get loadingQuotes => throw _privateConstructorUsedError;
  @override
  List<QuoteModel> get quoteModels => throw _privateConstructorUsedError;
  @override
  int get pageKey => throw _privateConstructorUsedError;
  @override
  bool get scroll => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$QuoteStateCopyWith<_QuoteState> get copyWith =>
      throw _privateConstructorUsedError;
}
