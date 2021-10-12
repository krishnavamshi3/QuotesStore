import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mstore/domain/news/quote_model.dart';
import 'package:mstore/view/pages/quotes/item_loading_card.dart';
import 'package:visibility_detector/visibility_detector.dart';

import 'application_state/app_values/app_constants.dart';
import 'application_state/quotes/quote_cubit.dart';
import 'injection.dart';

class AppHomePage extends StatefulWidget {
  const AppHomePage({Key? key}) : super(key: key);

  @override
  _AppHomePageState createState() => _AppHomePageState();
}

class _AppHomePageState extends State<AppHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  String _connectionStatus = 'Unknown';
  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;

  late ScrollController _scrollController;
  double itemHeight = 300;
  ValueNotifier<QuoteVisibility> _quoteVisibility = ValueNotifier<QuoteVisibility>(QuoteVisibility());

  @override
  void initState() {
    super.initState();
    initConnectivity();
    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);

    _scrollController = new ScrollController(initialScrollOffset: 5.0)
      ..addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _connectivitySubscription.cancel();
    super.dispose();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initConnectivity() async {
    ConnectivityResult result = ConnectivityResult.none;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      result = await _connectivity.checkConnectivity();
    } on PlatformException catch (e) {
      print(e.toString());
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) {
      return Future.value(null);
    }

    return _updateConnectionStatus(result);
  }

  Future<void> _updateConnectionStatus(ConnectivityResult result) async {
    switch (result) {
      case ConnectivityResult.wifi:
      case ConnectivityResult.mobile:
      case ConnectivityResult.none:
        setState(() {
          if (_connectionStatus.toLowerCase() == "unknown".toLowerCase()) {
            if (result == ConnectivityResult.none) {
            } else {
              print("Getting results from Network");
              getIt<QuoteCubit>().loadQuotesFromAPI(
                scroll: false,
              );
            }
          }
          _connectionStatus = result.toString();
        });
        break;
      default:
        setState(() => _connectionStatus = 'Failed to get connectivity.');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return true;
      },
      child: BlocProvider(
        create: (context) => getIt<QuoteCubit>(),
        child: MultiBlocListener(
          listeners: [
            BlocListener<QuoteCubit, QuoteState>(
              listenWhen: (p, c) => (p.loadingQuotes != c.loadingQuotes),
              listener: (context, state) {
                if (state.loadingQuotes) {}
              },
            ),
          ],
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              elevation: 0.0,
              backgroundColor: Colors.white,
              leading: IconButton(
                onPressed: () {
                  SystemChannels.platform.invokeMethod('SystemNavigator.pop');
                },
                icon: const Icon(
                  Icons.clear,
                  //size: 48,
                  color: Colors.black,
                ),
              ),
              title: Row(
                children: const [
                  Flexible(
                    child: Text(
                      AppTitle,
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
            body: SafeArea(
              child: getIt<QuoteCubit>().quotes().isEmpty &&
                      _connectionStatus.toLowerCase() ==
                          ConnectivityResult.none.toString().toLowerCase()
                  ? _noConnectionState()
                  : Container(
                      child: _body(context),
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.0,
                      ),
                    ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _noConnectionState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(
            Icons.signal_wifi_connected_no_internet_4_rounded,
            size: 64,
            color: Theme.of(context).primaryColor,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Text(
                    "No internet connection found. \nPlease check your connection and try again",
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _body(BuildContext context) {
    return BlocBuilder<QuoteCubit, QuoteState>(
      builder: (BuildContext blocContext, QuoteState quoteState) {
        if ((quoteState.loadingQuotes && !quoteState.scroll) ||
            _connectionStatus == "unknown") {
          return const Center(
            child: CircularProgressIndicator(
              color: Colors.blue,
            ),
          );
        }

        var size = MediaQuery.of(context).size;
        final double itemHeight = this.itemHeight;
        final double itemWidth = size.width / 2;
        
        return Stack(
          children: [
            
            /// Gridview Builder to  show the grid items. 
            /// Padding criteria has been referred to one of the popular stackoverflow answer. 
            GridView.builder(
              shrinkWrap: true,
              controller: _scrollController,
              itemCount: quoteState.loadingQuotes
                  ? quoteState.quoteModels.length + 20
                  : quoteState.quoteModels.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: itemWidth / itemHeight,
              ),
              itemBuilder: (BuildContext context, int index) {
                if (quoteState.quoteModels.length <= index) {
                  return Padding(
                    padding: EdgeInsets.only(
                      top: index % 2 == 0 ? 8 : 8,
                      right: index % 2 == 0 ? 4 : 4,
                      left: index % 2 == 1 ? 4 : 4,
                      bottom: index % 2 == 1 ? 8 : 8,
                    ),
                    child: LoadingItem(),
                  );
                }
                return Padding(
                  padding: EdgeInsets.only(
                    top: index % 2 == 0 ? 8 : 8,
                    right: index % 2 == 0 ? 4 : 4,
                    left: index % 2 == 1 ? 4 : 4,
                    bottom: index % 2 == 1 ? 8 : 8,
                  ),
                  /// Visibility Detector to show the last visible item number on UI.
                  /// Referred this from Flutter widgets.
                  child: VisibilityDetector(
                    key: Key(quoteState.quoteModels[index].toString()),
                    onVisibilityChanged: (VisibilityInfo info) {
                      debugPrint(
                          "${info.visibleFraction} of my widget is visible");
                      if(info.visibleFraction >= 0.70) {
                        _quoteVisibility.value = QuoteVisibility(visibleLastItemCount: index+1, totalItemCount: quoteState.quoteModels.length);
                      }
                    },
                    child: _quoteListItemWidget(
                      blocContext,
                      quoteState.quoteModels[index],
                    ),
                  ),
                );
              },
            ),
            Align(
              alignment: FractionalOffset.bottomCenter,
              child: ValueListenableBuilder<QuoteVisibility>(
                valueListenable: _quoteVisibility,
                builder: (context, value, child) {
                  if(value.visibleLastItemCount >0 && value.totalItemCount > 0) {
                    return Container(
                      margin: EdgeInsets.all(
                        24.0,
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 16.0,
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.grey[200],
                      ),
                      child: Text(
                        "${value.visibleLastItemCount} / ${value.totalItemCount}",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    );
                  }
                  return Container();
                },
              ),
            ),
          ],
        );
      },
    );
  }

  _scrollListener() {
    /// Scrollcontroller when reaches end of the list items,  referred to one of the popular stackoverflow answer.
    if (_scrollController.position.maxScrollExtent ==
            _scrollController.offset &&
        getIt<QuoteCubit>().quotes().length % 20 == 0) {
      print("comes to bottom true");
      getIt<QuoteCubit>().loadQuotesFromAPI(
        scroll: true,
      );
    }
  }

  Widget _quoteListItemWidget(BuildContext contex, QuoteModel quote) {
    double width = MediaQuery.of(contex).size.width;
    List<String> imageUrls = getIt<QuoteCubit>().getRandomImageUrl();
    return Container(
      width: width,
      color: Colors.white30,
      padding: EdgeInsets.symmetric(
        vertical: 8.0,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            //flex: 2,
            child: CarouselSlider.builder(
              itemCount: imageUrls.length,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) =>
                      Container(
                child: CachedNetworkImage(
                  imageBuilder: (context, imageProvider) => Container(
                    width: width / 2,
                    //height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          4.0,
                        ),
                      ),
                      image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  imageUrl: imageUrls[itemIndex],
                  placeholder: (context, url) => Icon(
                    Icons.image_outlined,
                    color: Colors.grey[300],
                  ),
                  errorWidget: (context, url, error) => Container(),
                ),
              ),
              options: CarouselOptions(
                autoPlay: false,
                enlargeCenterPage: false,
                pageSnapping: false,
                aspectRatio: 2.0,
                disableCenter: true,
                viewportFraction: 1,
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Flexible(
                child: Text(
                  (quote.sentence ?? "---") + '\n',
                  style: Theme.of(contex).textTheme.subtitle1?.copyWith(
                        fontSize: 12.0,
                        color: Colors.black,
                      ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 8.0,
          ),
          Row(
            children: [
              Text(
                "by",
                style: Theme.of(contex).textTheme.caption?.copyWith(
                      fontSize: 12.0,
                    ),
              ),
              SizedBox(
                width: 8.0,
              ),
              Flexible(
                child: Text(
                  quote.character?.name ?? "-",
                  style: Theme.of(contex).textTheme.caption?.copyWith(
                        fontSize: 12.0,
                        color: Colors.black,
                      ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 8.0,
          ),
          Row(
            children: [
              Text(
                "house",
                style: Theme.of(contex).textTheme.caption?.copyWith(
                      fontSize: 12.0,
                    ),
              ),
              SizedBox(
                width: 8.0,
              ),
              Flexible(
                child: Text(
                  quote.character?.house?.slug ?? "-",
                  style: Theme.of(contex).textTheme.caption?.copyWith(
                        fontSize: 12.0,
                        color: Colors.black,
                      ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

}

class QuoteVisibility {
  final int visibleLastItemCount;
  final int totalItemCount;

  QuoteVisibility({this.visibleLastItemCount = 0, this.totalItemCount = 0,});
}
