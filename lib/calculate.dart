import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpood/text_field_controller_provider.dart';

class Calculate extends ConsumerWidget {
  const Calculate({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final a= ref.watch(sumProvider);
    return Scaffold(
      appBar: AppBar(title: Text("Math")),
      body: Column(
        spacing: 5,
        children: [
          Text("enter first  number "),
          TextField(controller: ref.read(numberOneControllerProvider)),
          Text("enter second number "),
          TextField(controller: ref.read(numberTwoControllerProvider)),
          TextButton(
            onPressed: () {
              ref
                  .read(sumProvider.notifier)
                  .sum(
                    ref.read(numberTwoControllerProvider).text,
                    ref.read(numberOneControllerProvider).text,
                  );
            },
            child: Text("Add"),
          ),
          Text(
            a.toString()

          ),
        ],
      ),
    );
  }
}
