// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quote_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuoteModel _$$_QuoteModelFromJson(Map<String, dynamic> json) =>
    _$_QuoteModel(
      sentence: json['sentence'] as String?,
      character: json['character'] == null
          ? null
          : QuoteCharacterModel.fromJson(
              json['character'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_QuoteModelToJson(_$_QuoteModel instance) =>
    <String, dynamic>{
      'sentence': instance.sentence,
      'character': instance.character,
    };
