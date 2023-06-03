import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'dart:html' as html;

import 'package:onboarding_web_onfi/src/features/home/screens/page_scaffold.dart';
// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      title: 'HomePage',
      body: Center(
        child: Text('This is homepage',
            style: Theme.of(context).textTheme.headline4),
      ),
    );
  }
}
