// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application_state/quotes/quote_cubit.dart' as _i6;
import 'domain/news/i_quotes_service.dart' as _i4;
import 'infrastructure/core/injectable_module.dart' as _i7;
import 'infrastructure/quotes/api_quote_service.dart' as _i5;
import 'view/routes/app_router.gr.dart'
    as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final injectableModule = _$InjectableModule();
  gh.singleton<_i3.AppRouter>(injectableModule.appRouter);
  gh.lazySingleton<_i4.IQuoteService>(() => _i5.ApiQuoteService());
  gh.lazySingleton<_i6.QuoteCubit>(() => _i6.QuoteCubit());
  return get;
}

class _$InjectableModule extends _i7.InjectableModule {}
