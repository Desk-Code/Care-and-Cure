import 'package:flutter/material.dart';

Widget skeleton({
  double height = 50,
  double width = double.infinity,
  Widget? child,
}) =>
    Container(
      height: height,
      width: width,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.15),
        borderRadius: BorderRadius.circular(7),
      ),
      child: child,
    );
