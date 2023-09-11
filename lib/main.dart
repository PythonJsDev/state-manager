import 'package:flutter/material.dart';
import 'package:state_manager/bloc/bloc_app.dart';
import 'package:state_manager/widgets/main_button.dart';
import 'package:state_manager/riverpod/riverpod_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/home',
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder> {
        '/home': (context) => const HomePage(),
        '/riverpod': (context) => const RiverpodApp(),
        '/bloc': (context) => const BlocApp(),
      },
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("States Management"),
      ),
      body: const Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MainButton(label: 'Riverpod', route: '/riverpod'),
            MainButton(label: 'BLoC', route: '/bloc')

          ],
        ),
      ),
    );
  }
}
