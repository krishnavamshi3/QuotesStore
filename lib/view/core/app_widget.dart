import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '/../application_state/app_values/app_constants.dart';
import '/../injection.dart';
import '/../view/routes/app_router.gr.dart';


///statefull
class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  // Create the initialization Future outside of `build`:
  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  /// The future is part of the state of our widget. We should not call `initializeApp`
  /// directly inside [build].

  final BotToastNavigatorObserver botToastNavigatorObserver =
  BotToastNavigatorObserver();
  final botToastBuilder = BotToastInit();
  final AppRouter _appRouter = getIt<AppRouter>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerDelegate: _appRouter.delegate(
          navigatorObservers: () => [
            botToastNavigatorObserver,
          ],
      ),
      routeInformationParser: _appRouter.defaultRouteParser(),
      builder: (context, child) {
        return botToastBuilder(context, child);
      },
      title: AppTitle,
    );
  }
}
