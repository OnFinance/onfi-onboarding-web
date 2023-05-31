import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:onboarding_web_onfi/src/features/home/screens/app_menu.dart';


class SplitView extends ConsumerWidget {
  const SplitView({
    Key? key,
    required this.menu,
    required this.content,
    this.breakpoint = 600,
    this.menuWidth = 240,
  }) : super(key: key);
  final Widget menu;
  final Widget content;
  final double breakpoint;
  final double menuWidth;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth >= breakpoint) {
      // wide screen: menu on the left, content on the right
      return Scaffold(
        body: Row(
          children: [
            SizedBox(
              width: menuWidth,
              child: menu,
            ),
            InkWell(
                onTap: () {
                  ref.read(selectedPageNameProvider.state).state = "Second Page";
                },
                child: Container(width: 0.5, color: Colors.black)),
            Expanded(child: content),
          ],
        ),
      );
    } else {
      // narrow screen: show content, menu inside drawer
      return Scaffold(
        body: content,
        drawer: SizedBox(
          width: menuWidth,
          child: Drawer(
            child: menu,
          ),
        ),
      );
    }
  }
}
