// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quote_character_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuoteCharacterModel _$$_QuoteCharacterModelFromJson(
        Map<String, dynamic> json) =>
    _$_QuoteCharacterModel(
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      house: json['house'] == null
          ? null
          : QuoteHouseModel.fromJson(json['house'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_QuoteCharacterModelToJson(
        _$_QuoteCharacterModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'slug': instance.slug,
      'house': instance.house,
    };
