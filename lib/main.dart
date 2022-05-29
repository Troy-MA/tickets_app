import 'package:flutter/material.dart';
import 'package:tickets_app/ui/home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tickets App',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        primaryColor: Colors.orange,
        bottomAppBarTheme: const BottomAppBarTheme(
          color: Colors.orange,
        ),
        brightness: Brightness.dark,
      ),
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
