import 'package:flutter/material.dart';
import 'package:flutter_chat/routes/names.dart';
import 'package:get/get.dart';

import '../pages/welcome/index.dart';

class AppPages {
  static const INITIAL = AppRoutes.INITIAL;
  static const APPLICATION = AppRoutes.APPLICATION;

  static final RouteObserver<Route> observer = RouteObserver();
  static List<String> history = [];

  static final List<GetPage> routes = [
    GetPage(
      name: AppRoutes.INITIAL,
      page: (() => WelcomePage()),
      binding: WelcomeBinding(),
      // middlewares: [
      //   RouteWelcomeMiddleware(priority: 1),
      // ],
    ),
  ];
}
