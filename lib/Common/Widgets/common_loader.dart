import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

Widget loadingIndicator() => LoadingAnimationWidget.flickr(
      leftDotColor: Colors.red.shade200,
      rightDotColor: Colors.blue.shade200,
      size: 50,
    );
