import 'package:flutter/material.dart';
import 'package:places/things_to_do/dist.dart';
import 'package:places/things_to_do/div.dart';
import 'package:places/things_to_do/places.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Places(),
        '/dist': (idDist) => District(idDist),
        '/places': (idPlaces) => Todo(idPlaces),
      },
      // home: Places(),
    );
  }
}
