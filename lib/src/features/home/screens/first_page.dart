import 'package:flutter/material.dart';
import 'package:onboarding_web_onfi/src/features/home/screens/page_scaffold.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      title: 'First Page',
      body: Center(
        child: Text('First Page', style: Theme.of(context).textTheme.headline4),
      ),
    );
  }
}
