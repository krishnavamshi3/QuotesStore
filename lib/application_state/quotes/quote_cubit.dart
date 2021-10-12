import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mstore/domain/news/i_quotes_service.dart';
import 'package:mstore/domain/news/quote_model.dart';

import '../../injection.dart';

part 'quote_cubit.freezed.dart';
part 'quote_state.dart';

@lazySingleton
class QuoteCubit extends Cubit<QuoteState> {

  late final IQuoteService _iquoteService;
  String aryaImage = "https://www.thehindubusinessline.com/news/variety/5sro5a/article26099356.ece/ALTERNATES/LANDSCAPE_355/Maisie-WILLIAMSjpg";
  String denarisImage = "https://www.koimoi.com/wp-content/new-galleries/2021/09/game-of-thrones-khaleesi-emilia-clarke-stuck-into-toilet-while-filming-with-fake-blood-on-the-show-001.jpg";
  String johnImage = "https://deadline.com/wp-content/uploads/2019/08/kit-harington-game-of-thrones-e1566585099334.jpg";
  String randomImage = "https://m.media-amazon.com/images/M/MV5BYTRiNDQwYzAtMzVlZS00NTI5LWJjYjUtMzkwNTUzMWMxZTllXkEyXkFqcGdeQXVyNDIzMzcwNjc@._V1_.jpg";
  String r1 = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWJ6TzrGZZPrrmJ_ANqaQh6vezNvOPJjOufg&usqp=CAU";
  String r2 = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTT-JhF67qmjHu1LntedOO-6paknneJnx_ZEQ&usqp=CAU";
  String r3 = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDZpOffUGpo9WTEBhOuLEARB_GvtCtQOgk5g&usqp=CAU";
  String r4 = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRaT3Sg_ziWAcPZrx-xtf5v0phu9YZ62f4HiQ&usqp=CAU";
  String r5 = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZenWoTnRKN5I0vPayxRpVt8-TXMgEnOq8CA&usqp=CAU";
  String r6 = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjw93oawnSAGbM40sYqa3hEZo0tWry_79pQw&usqp=CAU";
  String r7 = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQssZyeBLL89QAzoUsKtVpQvXlRzU8GKPXFag&usqp=CAU";


  late final List<String> _imageUrls;
  List<QuoteModel> _quoteList = List.empty(growable: true);


  QuoteCubit() : super(QuoteState.empty()) {
    _iquoteService = getIt<IQuoteService>();
    _imageUrls = [aryaImage, denarisImage, randomImage,r1, r2, r4,r5, r6, r7,];
  }

  @override
  Future<void> close() async {
    super.close();
  }

  /// fetch articles from api when the current list is empty or if force fetch like refresh(currently not implemented).
  /// Emits the new state with new articles which can be listened by the Block listener widgets.
  
  Future<void> loadQuotesFromAPI({bool scroll = false}) async {

    if(!scroll && _quoteList.isEmpty) {
      emit(state.copyWith(loadingQuotes: true, pageKey: 1,),);
      List<QuoteModel> quotes = await _iquoteService.quotesFromApi(20);
      _quoteList.addAll(quotes);
      emit(state.copyWith(quoteModels: _quoteList, loadingQuotes: false, pageKey: 1,),);
    } else if(_quoteList.isNotEmpty && scroll) {
      final pageKey = state.pageKey +1;
      emit(state.copyWith(loadingQuotes: true, pageKey: pageKey, scroll: true),);
      List<QuoteModel> quotes = await _iquoteService.quotesFromApi(20);
      _quoteList.addAll(quotes);
      emit(state.copyWith(quoteModels: _quoteList, loadingQuotes: false, pageKey: pageKey, scroll: false,),);
    } else if (_quoteList.isNotEmpty && !scroll) {
      emit(state.copyWith(loadingQuotes: true,),);
      List<QuoteModel> quotes = await _iquoteService.quotesFromApi(20);
      _quoteList.addAll(quotes);
      emit(state.copyWith(quoteModels: _quoteList, loadingQuotes: false,),);
    }
  }

  List<String> getRandomImageUrl() {
    return _imageUrls.sample(4,);
  }

  List<QuoteModel> quotes() {
    return _quoteList;
  }


}