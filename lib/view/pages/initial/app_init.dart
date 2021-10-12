import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '/../view/routes/app_router.gr.dart';

class AppInit extends StatefulWidget {
  const AppInit({Key? key}) : super(key: key);

  @override
  _AppInitState createState() => _AppInitState();
}

class _AppInitState extends State<AppInit> {


  @override
  void initState() {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      AutoRouter.of(context).replace(const AppHomeRoute());
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(color: Colors.white),
      ),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    //_checkUserAuthAndNavigate(context);
  }

}
