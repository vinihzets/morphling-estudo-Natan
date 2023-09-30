import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import '../../../../core/bloc/bloc_state.dart';
import '../bloc/home_bloc.dart';
import '../bloc/home_event.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  HomeBloc bloc = HomeBloc();
  bool value = true;

  @override
  void initState() {
    bloc.dispatchEvent(OnReadyEvent(true));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder(
            stream: bloc.state,
            builder: (context, AsyncSnapshot<BlocState> snapshot) {
              if (snapshot.hasData) {
                if (snapshot.data is BlocStableState) {
                  return Center(
                    child: ElevatedButton(
                      onPressed: () {
                        bloc.dispatchEvent(OnReadyEvent(value));
                        value = !value;
                      },
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.green)),
                      child: const Text('Data'),
                    ),
                  );
                } else if (snapshot.data is BlocEmptyState) {
                  return Center(
                    child: ElevatedButton(
                      onPressed: () => bloc.dispatchEvent(OnReadyEvent(value)),
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.red)),
                      child: const Text('Data'),
                    ),
                  );
                  // -->
                } else if (snapshot.data is BlocLoadingState) {
                  return const Center(
                      child: CircularProgressIndicator.adaptive());
                  // -->
                }
              }
              return Container();
            }));
  }
}
