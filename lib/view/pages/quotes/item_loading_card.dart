import 'package:flutter/material.dart';
import 'package:mstore/application_state/app_values/app_constants.dart';
import 'package:mstore/view/core/size_config.dart';
import 'package:shimmer/shimmer.dart';


class LoadingItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(getProportionateScreenWidth(10)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              offset: const Offset(0, 2,),
              blurRadius: 10.0),
        ],
      ),
      child: Shimmer.fromColors(
        highlightColor: kBackgroundColor,
        baseColor: Colors.grey[300]??Colors.grey,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              flex: 5,
              child: Center(
                child: Container(
                  width: getProportionateScreenWidth(100),
                  color: Colors.grey[400],
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: Center(
                child: Container(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 5,),
                          Container(width: getProportionateScreenWidth(110),
                            height: getProportionateScreenHeight(20),
                            color: Colors.grey[400],
                          ),
                          SizedBox(height: 5,),
                          Container(width: getProportionateScreenWidth(75),
                            height: getProportionateScreenHeight(15),
                            color: Colors.grey[400],
                          )
                        ])),
              ),
            )
          ],
        ),
      ),
    );
  }
}