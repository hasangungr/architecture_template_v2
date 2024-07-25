import 'package:widgets/widgets.dart';

import '../../../core/extensions/context_extension.dart';
import '../../../product/init/env/app_enviroment.dart';
import '../../../product/init/custom_localization.dart';
import '../../../product/navigation/app_router.dart';
import '../../../product/utility/const/enums/locales.dart';
import '../../../product/widget/custom_network_img.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

part '../widget/home_appbar.dart';

@RoutePage()
final class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const _HomeAppbar(),
      body: Center(
        child: ListView(
          children: [
            const CustomNetworkImage(
                url:
                    'https://firebasestorage.googleapis.com/v0/b/coffee-app-95562.appspot.com/o/espressoo.jpg?alt=media&token=a2542f38-d9c9-4f14-a37b-277a63184f2d'),
            Text(
              AppEnviroment.appTitle,
              style: context.appTextTheme.displayLarge,
            ).tr(),
            const Text("test").tr(),
            ElevatedButton(
                onPressed: () => CustomLocalization.changeLang(
                    context: context, locales: Locales.en),
                child: const Text("Change")),
            ElevatedButton(
                onPressed: () => CustomLocalization.changeLang(
                    context: context, locales: Locales.tr),
                child: const Text("Değiştir")),
            ElevatedButton(
                onPressed: () async {
                  // context.router.push(HomeDetailRoute(id: "123"));
                  // context.router.pushNamed('/homeDetail/123');
                  context.router.pushNamed('${RouteName.homeDetail}/123');
                },
                child: const Text("Router")),
            ElevatedButton(
                onPressed: () =>
                    SuccessDialog.show(title: '', context: context),
                child: const Text("Dialog")),
          ],
        ),
      ),
    );
  }
}
