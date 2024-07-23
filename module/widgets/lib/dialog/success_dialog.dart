import 'package:flutter/material.dart';

import '../core/base_dialog.dart';

final class SuccessDialog extends StatelessWidget {
  const SuccessDialog({
    super.key,
    this.title,
  });

  final String? title;

  static Future<bool> show({
    required String title,
    required BuildContext context,
  }) async {
    await DialogBase.show<bool>(
      context: context,
      builder: (context) => SuccessDialog(title: title),
    );
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      title: Column(
        children: [
          const Text('Success'),
          Text(title ?? ''),
        ],
      ),
      actions: [
        IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back))
      ],
    );
  }
}
