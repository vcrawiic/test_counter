import 'package:flutter/material.dart';
import 'package:test_task/design/palette.dart';

class FirstPageState {
  const FirstPageState({
    this.leftColor = Pallete.lightGrey,
    this.rightColor = Pallete.lightGrey,
  });

  final Color leftColor;
  final Color rightColor;

  FirstPageState copyWith({Color? left, Color? right}) {
    return FirstPageState(
      leftColor: left ?? leftColor,
      rightColor: right ?? rightColor,
    );
  }
}
