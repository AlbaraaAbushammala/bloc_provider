import 'package:bloc/bloc.dart';
import 'package:bloc_provider/shared/bloc_observer.dart';
import 'package:flutter/material.dart';
import 'counter/counter_screen.dart';


void main() {


// Note: BlocObserver can be used to observe all cubits.
  BlocOverrides.runZoned(
        () {
          runApp(MyApp());

    },
    blocObserver: MyBlocObserver(),
  );





}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CaunterScreen(),
    );
  }
}
