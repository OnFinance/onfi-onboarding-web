import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:onboarding_web_onfi/src/features/home/screens/first_page.dart';
import 'package:onboarding_web_onfi/src/features/home/screens/homepage.dart';

import 'dart:html' as html;

import '../../settings/screens/setting_screen.dart';

// a map of ("page name", WidgetBuilder) pairs
final _availablePages = <String, WidgetBuilder>{
  '/#/home': (_) => HomePage(),
  '/#/settings': (_) => SettingsPage(),
};

// make this a `StateProvider` so we can change its value
final selectedPageNameProvider = StateProvider<String>((ref) {
  // default value
  return _availablePages.keys.first;
});

final selectedPageBuilderProvider = Provider<WidgetBuilder>((ref) {
  // watch for state changes inside selectedPageNameProvider
  final selectedPageKey = ref.watch(selectedPageNameProvider.state).state;
  // return the WidgetBuilder using the key as index
  return _availablePages[selectedPageKey]!;
});

class AppMenu extends ConsumerStatefulWidget {
  AppMenu({super.key, required this.pageName});
  String pageName;

  @override
  ConsumerState<AppMenu> createState() => _AppMenuState();
}

class _AppMenuState extends ConsumerState<AppMenu> {
  void _selectPage(BuildContext context, WidgetRef ref, String pageName) {
    if (ref.read(selectedPageNameProvider.state).state != pageName) {
      //  html.window.history.pushState({}, '', '/${pageName}');

      html.window.history.pushState({}, '', pageName);
      ref.read(selectedPageNameProvider.state).state = pageName;

      // dismiss the drawer of the ancestor Scaffold if we have one
      if (Scaffold.maybeOf(context)?.hasDrawer ?? false) {
        Navigator.of(context).pop();
      }
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    // setState(() {
    //  ref.read(selectedPageNameProvider.notifier).state = widget.pageName;
    // });
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(selectedPageNameProvider.notifier).state = widget.pageName;
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final selectedPageName = ref.watch(selectedPageNameProvider.state).state;

    return Scaffold(
      appBar: AppBar(title: Text('Menu')),
      body: ListView(
        children: <Widget>[
          for (var pageName in _availablePages.keys)
            PageListTile(
              // 3. pass the selectedPageName as an argument
              selectedPageName: selectedPageName,
              pageName: pageName,
              onPressed: () => _selectPage(context, ref, pageName),
            ),
        ],
      ),
    );
  }
}

class PageListTile extends StatelessWidget {
  const PageListTile({
    Key? key,
    this.selectedPageName,
    required this.pageName,
    this.onPressed,
  }) : super(key: key);
  final String? selectedPageName;
  final String pageName;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      // show a check icon if the page is currently selected
      // note: we use Opacity to ensure that all tiles have a leading widget
      // and all the titles are left-aligned
      leading: Opacity(
        opacity: selectedPageName == pageName ? 1.0 : 0.0,
        child: Icon(Icons.check),
      ),
      title: Text(pageName),
      onTap: onPressed,
    );
  }
}
