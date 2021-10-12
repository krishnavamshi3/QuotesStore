
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mstore/domain/news/quote_house_model.dart';

part 'quote_character_model.freezed.dart';
part 'quote_character_model.g.dart';

@freezed
class QuoteCharacterModel with _$QuoteCharacterModel {
  const factory QuoteCharacterModel({
    required String? name,
    required String? slug,
required QuoteHouseModel? house,
  }) = _QuoteCharacterModel;

  const QuoteCharacterModel._();

  factory QuoteCharacterModel.empty() =>  QuoteCharacterModel(
    name: '',
    slug: '',
    house: QuoteHouseModel.empty(),
  );


  factory QuoteCharacterModel.fromJson(Map<String, dynamic> json) => _$QuoteCharacterModelFromJson(json);
}
