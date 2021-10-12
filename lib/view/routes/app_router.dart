import 'package:auto_route/annotations.dart';
import '/../homepage.dart';


@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: AppHomePage, initial: true,),
  ],
)class $AppRouter {}