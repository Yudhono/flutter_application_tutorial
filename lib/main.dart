import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_tutorial/app.dart';
import 'package:flutter_application_tutorial/custom_login_screen.dart';
import 'package:flutter_application_tutorial/models/person.dart';
import 'package:flutter_application_tutorial/counter_observer.dart';

void main() {
  Bloc.observer = const CounterObserver();
  // runApp(const MainApp());
  runApp(const CounterApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: const CustomLoginScreen(),
      ),
    );
    // return MaterialApp(
    //   home: Scaffold(
    //     body: ListView.separated(
    //       itemBuilder: (context, index) {
    //         final person = personData[index];
    //         // return CustomCard(
    //         //   name: person.name,
    //         //   address: person.address,
    //         //   image: person.image,
    //         // );
    //         return CustomLoginScreen();
    //       },
    //       separatorBuilder: (context, index) {
    //         return const SizedBox(
    //           height: 5,
    //         );
    //       },
    //       itemCount: 3,
    //     ),
    //   ),
    // );
  }
}
