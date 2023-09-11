import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:state_manager/bloc/pages/bloc_page.dart';
import 'package:state_manager/bloc/pages/bloc_settings_page.dart';
import 'package:state_manager/bloc/settings_cubit.dart';
import '../main.dart';

class BlocApp extends StatelessWidget {
  const BlocApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SettingsCubit(),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        initialRoute: '/bloc',
        routes: {
          '/bloc': (context) => const BlocPage(),
          '/bloc/settings': (context) => const BlocSettingsPage(),
        },
        onGenerateRoute: (settings) {
          if (settings.name == "/home") {
            return PageRouteBuilder(
              settings: settings,
              pageBuilder: (_, __, ___) => const MyApp(),
            );
          }
          return null;
        },
      ),
    );
  }
}