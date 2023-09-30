import 'package:flutter/material.dart';
import 'package:morphling/core/injector/inject.dart';

import 'features/home/presentation/view/home_view.dart';

void main() async {
  await Injector.build();
  runApp(const MorphlingApp());
}

class MorphlingApp extends StatefulWidget {
  const MorphlingApp({super.key});

  @override
  State<MorphlingApp> createState() => _MorphlingAppState();
}

class _MorphlingAppState extends State<MorphlingApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const HomeView(),
    );
  }
}
