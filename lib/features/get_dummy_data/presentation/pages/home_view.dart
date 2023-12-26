import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_clean_architecture/features/get_dummy_data/presentation/manager/provider.dart';

class HomeView extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(getItemProvider(1));
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){

        },
      ),
      body: Center(
        child: switch (value) {
          AsyncValue(:final error?) => Text(
              error.toString(),
              style: const TextStyle(color: Colors.red),
            ),
          AsyncValue(:final value?) => value.fold(
              (left) => Text(left, style: const TextStyle(color: Colors.red)),
              (right) =>
                  Text(right.title!, style: const TextStyle(color: Colors.green))),
          _ => const CircularProgressIndicator()
        },
      ),
    );
  }
}
