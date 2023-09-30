import 'package:flutter/material.dart';

class HomeViewStableState extends StatefulWidget {
  const HomeViewStableState({super.key});

  @override
  State<HomeViewStableState> createState() => _HomeViewStableStateState();
}

class _HomeViewStableStateState extends State<HomeViewStableState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('stable')),
            ElevatedButton(onPressed: () {}, child: const Text('error')),
            ElevatedButton(onPressed: () {}, child: const Text('loading')),
            ElevatedButton(onPressed: () {}, child: const Text('empty')),
          ],
        ),
      ),
    );
  }
}
