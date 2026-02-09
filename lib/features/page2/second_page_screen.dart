import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'second_page_body.dart';

@RoutePage()
class SecondPageScreen extends StatelessWidget {
  const SecondPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SecondPageBody();
  }
}
