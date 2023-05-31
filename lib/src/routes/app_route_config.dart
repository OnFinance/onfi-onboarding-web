import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:onboarding_web_onfi/src/features/authentication/screens/authcheck.dart';
import 'package:onboarding_web_onfi/src/features/authentication/screens/login_screen.dart';
import 'package:onboarding_web_onfi/src/features/home/screens/homepage.dart';
import 'package:onboarding_web_onfi/src/features/settings/screens/setting_screen.dart';

import '../features/home/screens/home_main.dart';

class MyAppRoutes {
  GoRouter router = GoRouter(routes: [
    GoRoute(
        name: "/authchecker",
        path: '/auth',
        pageBuilder: (context, state) {
          return const MaterialPage(child: AuthChecker());
        }),
    GoRoute(
        name: "/login",
        path: '/login',
        pageBuilder: (context, state) {
          return const MaterialPage(child: LoginScreen());
        }),
    GoRoute(
        name: "/home",
        path: '/',
        pageBuilder: (context, state) {
          return const MaterialPage(child: HomeMain());
        }),
    GoRoute(
        name: "/settings",
        path: '/settings',
        pageBuilder: (context, state) {
          return const MaterialPage(child: SettingPage());
        }),
  ]);
}
