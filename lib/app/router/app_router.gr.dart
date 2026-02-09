// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:test_task/features/home/home_screen.dart' as _i2;
import 'package:test_task/features/page1/first_page_screen.dart' as _i1;
import 'package:test_task/features/page2/second_page_screen.dart' as _i3;

/// generated route for
/// [_i1.FirstPageScreen]
class FirstRouteRoute extends _i4.PageRouteInfo<void> {
  const FirstRouteRoute({List<_i4.PageRouteInfo>? children})
    : super(FirstRouteRoute.name, initialChildren: children);

  static const String name = 'FirstRouteRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i1.FirstPageScreen();
    },
  );
}

/// generated route for
/// [_i2.HomeScreen]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute({List<_i4.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i2.HomeScreen();
    },
  );
}

/// generated route for
/// [_i3.SecondPageScreen]
class SecondRouteRoute extends _i4.PageRouteInfo<void> {
  const SecondRouteRoute({List<_i4.PageRouteInfo>? children})
    : super(SecondRouteRoute.name, initialChildren: children);

  static const String name = 'SecondRouteRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i3.SecondPageScreen();
    },
  );
}
