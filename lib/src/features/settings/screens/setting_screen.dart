import 'package:flutter/material.dart';
import 'package:onboarding_web_onfi/src/features/home/screens/page_scaffold.dart';


class SettingsPage extends StatefulWidget {
  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      title: 'SettingpAGE',
      body: Center(
        child:
            Text('This is settingPage', style: Theme.of(context).textTheme.headline4),
      ),
    );
  }
}
