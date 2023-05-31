import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:onboarding_web_onfi/src/features/home/screens/app_menu.dart';
import 'package:onboarding_web_onfi/src/features/home/screens/split_view.dart';

class HomeMain extends ConsumerWidget {
  const HomeMain({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedPageBuilder = ref.watch(selectedPageBuilderProvider);
    return SplitView(
      menu: AppMenu(),
      content: selectedPageBuilder(context),
    );
  }
}
