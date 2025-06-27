import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:to_do/screens/home_page.dart';

void main() async {
  await Hive.initFlutter();

  await Hive.openBox('mybox');
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.deepPurple, // твой бежевый
          foregroundColor: Colors.lightGreen, // цвет текста и иконок
          elevation: 0,
          centerTitle: true,
        ),
      ),
      home: HomePage(),
    );
  }
}
