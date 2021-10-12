
import 'package:injectable/injectable.dart';
import '/../view/routes/app_router.gr.dart';

@module
abstract class InjectableModule {
  @singleton
  AppRouter get appRouter => AppRouter();

}
