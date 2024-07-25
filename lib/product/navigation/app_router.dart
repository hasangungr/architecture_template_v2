import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../feature/home/view/home_detail_view.dart';
import '../../feature/home/view/home_view.dart';
import '../../feature/users/users_list_view.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, initial: false, path: RouteName.home),
        AutoRoute(
            page: UsersListRoute.page, initial: true, path: RouteName.userList),
        AutoRoute(
            page: HomeDetailRoute.page, path: '${RouteName.homeDetail}/:id'),
      ];
}

@immutable
final class RouteName {
  const RouteName._();
  static const String home = '/home';
  static const String homeDetail = '/homeDetail';
  static const String userList = '/';
}
