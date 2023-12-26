import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_clean_architecture/services/di_service.dart';

import 'features/get_dummy_data/presentation/pages/home_view.dart';

Future<void> main() async {
  await DiService().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      home: ProviderScope(
        child: HomeView(),
      ),
    );
  }
}

