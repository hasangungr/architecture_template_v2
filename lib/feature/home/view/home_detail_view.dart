import 'package:architecture_template_v2/core/extensions/context_extension.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage<bool?>()
class HomeDetailView extends StatelessWidget {
  const HomeDetailView({super.key, required this.id});

  final String id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              id,
              style: context.appTextTheme.displayLarge,
            ),
          ],
        ),
      ),
    );
  }
}
