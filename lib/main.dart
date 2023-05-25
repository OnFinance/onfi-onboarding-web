import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:onboarding_web_onfi/src/features/authentication/screens/authcheck.dart';
import 'package:onboarding_web_onfi/src/routes/app_route_config.dart';
import 'package:onboarding_web_onfi/src/utils/firebse_options.dart';

void main() async {
  await Firebase.initializeApp(
      options:const FirebaseOptions(
          apiKey: "AIzaSyATXBCYC0ojJVixlZLzZcWHdJyGYKfRQKM",
          authDomain: "onfi-onbaording.firebaseapp.com",
          projectId: "onfi-onbaording",
          storageBucket: "onfi-onbaording.appspot.com",
          messagingSenderId: "498057028376",
          appId: "1:498057028376:web:af7cef9bdd5d206a7cb46d",
          measurementId: "G-HLR3EGPJTL"));
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routeInformationParser: MyAppRoutes().router.routeInformationParser,
      routerDelegate: MyAppRoutes().router.routerDelegate,
    );
  }
}
