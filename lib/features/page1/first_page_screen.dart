import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'first_page_body.dart';

@RoutePage()
class FirstPageScreen extends StatelessWidget {
  const FirstPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const FirstPageBody();
  }
}
