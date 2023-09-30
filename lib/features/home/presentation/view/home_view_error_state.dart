import 'package:flutter/material.dart';

class HomeViewErrorState extends StatefulWidget {
  const HomeViewErrorState({super.key});

  @override
  State<HomeViewErrorState> createState() => _HomeViewErrorStateState();
}

class _HomeViewErrorStateState extends State<HomeViewErrorState> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('Tente Novamente Erro inesperado!'),
    );
  }
}
