
import 'package:mstore/domain/news/quote_model.dart';

abstract class IQuoteService {
  Future<List<QuoteModel>> quotesFromApi(int count);
}