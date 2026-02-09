import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../page1/first_page_cubit.dart';
import '../page2/second_page_cubit.dart';
import 'bottom_nav.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => FirstPageCubit()),
        BlocProvider(create: (_) => SecondPageCubit()),
      ],
      child: AutoTabsRouter(
        builder: (context, child) {
          final tabsRouter = AutoTabsRouter.of(context);
          return Scaffold(
            body: child,
            bottomNavigationBar: BottomNav(
              currentIndex: tabsRouter.activeIndex,
              onChanged: tabsRouter.setActiveIndex,
            ),
          );
        },
      ),
    );
  }
}
