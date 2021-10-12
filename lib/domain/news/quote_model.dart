import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mstore/domain/news/quote_character_model.dart';

part 'quote_model.freezed.dart';
part 'quote_model.g.dart';

@freezed
class QuoteModel with _$QuoteModel {
  const factory QuoteModel({
    required String? sentence,
    required QuoteCharacterModel? character,
  }) = _QuoteModel;

  const QuoteModel._();

  factory QuoteModel.empty() =>  QuoteModel(
    sentence: '',
    character: QuoteCharacterModel.empty(),
  );


  factory QuoteModel.fromJson(Map<String, dynamic> json) => _$QuoteModelFromJson(json);
}