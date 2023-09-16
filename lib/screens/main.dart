import 'package:bloc_example/bloc/internet_bloc/internet_bloc.dart';
import 'package:bloc_example/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => InternetBloc(),
    child: const MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}
