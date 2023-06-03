import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:onboarding_web_onfi/src/features/home/screens/app_menu.dart';
import 'package:onboarding_web_onfi/src/features/home/screens/split_view.dart';

class HomeMain extends ConsumerWidget {
   HomeMain({super.key, required this.pagename});
  String pagename;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedPageBuilder = ref.watch(selectedPageBuilderProvider);
    return SplitView(
      menu: AppMenu(pageName: pagename,),
      content: selectedPageBuilder(context),
    );
  }
}
