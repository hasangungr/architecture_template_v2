import 'package:architecture_template_v2/core/extensions/context_extension.dart';
import 'package:architecture_template_v2/product/init/env/app_enviroment.dart';
import 'package:architecture_template_v2/product/init/custom_localization.dart';
import 'package:architecture_template_v2/product/navigation/app_router.dart';
import 'package:architecture_template_v2/product/utility/const/enums/locales.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';

part 'widget/home_appbar.dart';

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
            Assets.lottie.animZombie.lottie(package: 'gen'),
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
          ],
        ),
      ),
    );
  }
}
