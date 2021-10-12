
import 'package:freezed_annotation/freezed_annotation.dart';

part 'quote_house_model.freezed.dart';
part 'quote_house_model.g.dart';

@freezed
class QuoteHouseModel with _$QuoteHouseModel {
  const factory QuoteHouseModel({
    required String? name,
    required String? slug,

  }) = _QuoteHouseModel;

  const QuoteHouseModel._();

  factory QuoteHouseModel.empty() =>  QuoteHouseModel(
    name: '',
    slug: '',
  );


  factory QuoteHouseModel.fromJson(Map<String, dynamic> json) => _$QuoteHouseModelFromJson(json);
}
