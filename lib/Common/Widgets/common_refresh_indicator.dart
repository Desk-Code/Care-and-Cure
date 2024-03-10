import 'package:care_and_cure/Util/common_values.dart';
import 'package:care_and_cure/Util/constrain_color.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh_new/pull_to_refresh.dart';

Widget refreshIndicator({
  required void Function()? onRefresh,
  required void Function()? onLoading,
  required Widget? home,
}) =>
    SmartRefresher(
      controller: CommonValues.refreshController,
      onRefresh: onRefresh,
      onLoading: onLoading,
      enablePullDown: true,
      enablePullUp: true,
      header: WaterDropMaterialHeader(
        backgroundColor: ConstrainColor.bgAppBarColor,
        color: Colors.black38,
      ),
      child: home,
    );
