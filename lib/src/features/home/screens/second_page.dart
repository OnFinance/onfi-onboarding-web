import 'package:flutter/material.dart';
import 'package:onboarding_web_onfi/src/features/home/screens/page_scaffold.dart';


class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      title: 'Second Page',
      body: Center(
        child:
            Text('Second Page', style: Theme.of(context).textTheme.headline4),
      ),
    );
  }
}
