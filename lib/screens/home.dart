import 'package:bloc_example/bloc/internet_bloc/internet_bloc.dart';
import 'package:bloc_example/bloc/internet_bloc/internet_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocConsumer<InternetBloc, InternetStates>(
          listener: (context, state) {
            if (state is InternetGainedState) {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text('You\'re connected to the internet'),
                backgroundColor: Colors.green,
              ));
            } else if (state is InternetLostState) {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text('No Internet!'),
                backgroundColor: Colors.red,
              ));
            }
          },
          builder: (context, state) {
            if (state is InternetGainedState) {
              return const Text('Connected');
            } else if (state is InternetLostState) {
              return const Text('Disconnected');
            } else {
              return const CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}
