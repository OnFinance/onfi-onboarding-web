import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:onboarding_web_onfi/src/features/authentication/screens/login_screen.dart';
import 'package:onboarding_web_onfi/src/features/home/screens/homepage.dart';

class MyAppRoutes {
  GoRouter router = GoRouter(routes: [
    GoRoute(
        name: "/auth",
        path: '/',
        pageBuilder: (context,state) {
          return const MaterialPage(child: LoginScreen());
        }),
        GoRoute(
        name: "/home",
        path: '/home',
        pageBuilder: (context,state) {
          return const MaterialPage(child: HomePage());
        }),
  ]);
}
