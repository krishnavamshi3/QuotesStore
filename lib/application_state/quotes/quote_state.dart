part of 'quote_cubit.dart';

@freezed
class QuoteState with _$QuoteState {
  const factory QuoteState({
    required bool loadingQuotes,
    required List<QuoteModel> quoteModels,
    required int pageKey,
    required bool scroll,
  }) = _QuoteState;
  const QuoteState._();

  factory QuoteState.empty() => QuoteState(
    loadingQuotes: false,
    quoteModels: List.generate(0, (index) => QuoteModel.empty(), growable: true),
    pageKey: 1,
    scroll: false,
  );

  bool isLoadingMoreQuotes() {
    return scroll;
  }

}