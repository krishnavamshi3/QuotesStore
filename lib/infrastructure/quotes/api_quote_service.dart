

import 'dart:convert';

import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:mstore/domain/news/i_quotes_service.dart';
import 'package:mstore/domain/news/quote_model.dart';

import 'api_constants.dart';

@LazySingleton(as: IQuoteService)
class ApiQuoteService implements IQuoteService {
  final Client client = Client();


  @override
  Future<List<QuoteModel>> quotesFromApi(int count) async {
    try {
      String url = DATA_URL + "$count";
      var response = await client.get(Uri.parse(url));
      if (response.statusCode == 200) {
        var decoded = jsonDecode(utf8.decode(response.bodyBytes));
        List<QuoteModel> articleModels = decoded.map<QuoteModel>((e) => QuoteModel.fromJson(e)).toList();
        return articleModels;
      } else {
        return [];
      }
    } catch (e, s) {
      print(e);
      print(s);
    }
    return [];
  }


}