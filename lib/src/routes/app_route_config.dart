import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:onboarding_web_onfi/src/features/authentication/screens/authcheck.dart';
import 'package:onboarding_web_onfi/src/features/authentication/screens/login_screen.dart';
import 'package:onboarding_web_onfi/src/features/home/screens/homepage.dart';
import 'package:onboarding_web_onfi/src/features/settings/screens/setting_screen.dart';

import '../features/home/screens/home_main.dart';

class MyAppRoutes {
  GoRouter router = GoRouter(routes: [
    // GoRoute(
    //     name: "main",
    //     path: "/",
    //     builder: (context, state) => const HomeMain(),
    //     routes: <RouteBase>[
    //       GoRoute(
    //         name: "home",
    //         path: "home",
    //         builder: (context, state) => const HomePage(),
    //       ),
    //       GoRoute(
    //         name: "settings",
    //         path: "settings",
    //         builder: (context, state) =>  SettingsPage(),
    //       ),
    //       // GoRoute(
    //       //   name: "account_detail_step",
    //       //   path: "account_detail_step",
    //       //   builder: (context, state) => const TestPage(),
    //       // ),
    //     ]),
    GoRoute(
        name: "/authchecker",
        path: '/',
        pageBuilder: (context, state) {
          return const MaterialPage(child: AuthChecker());
        }),
    GoRoute(
        name: "/login",
        path: '/login',
        pageBuilder: (context, state) {
          return const MaterialPage(child: LoginScreen());
        }),
    // GoRoute(
    //     name: "/mainhome",
    //     path: '/',
    //     pageBuilder: (context, state) {
    //       return const MaterialPage(child: HomeMain());
    //     }),
    GoRoute(
        name: "/home",
        path: '/home',
        pageBuilder: (context, state) {
          return MaterialPage(
              child: HomeMain(
            pagename: "/#/home",
          ));
        }),
    GoRoute(
        name: "/settings",
        path: '/settings',
        pageBuilder: (context, state) {
          return MaterialPage(
              child: HomeMain(
            pagename: "/#/settings",
          ));
        }),
  ]);
}
