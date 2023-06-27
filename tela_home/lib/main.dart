import 'package:flutter_modular/flutter_modular.dart';
import 'package:tela_inicial/app_module.dart';
import 'package:tela_inicial/app_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Emissor',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
