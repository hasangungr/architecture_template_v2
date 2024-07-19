import 'package:architecture_template_v2/product/init/env/manager/app_enviroment.dart';
import 'package:architecture_template_v2/product/init/custom_localization.dart';
import 'package:architecture_template_v2/product/utility/const/enums/locales.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

part 'widget/home_appbar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const _HomeAppbar(),
      body: Center(
        child: Column(
          children: [
            Text(AppEnviroment.appTitle).tr(),
            const Text("test").tr(),
            ElevatedButton(
                onPressed: () => CustomLocalization.changeLang(
                    context: context, locales: Locales.en),
                child: const Text("Change")),
            ElevatedButton(
                onPressed: () => CustomLocalization.changeLang(
                    context: context, locales: Locales.tr),
                child: const Text("Değiştir"))
          ],
        ),
      ),
    );
  }
}
