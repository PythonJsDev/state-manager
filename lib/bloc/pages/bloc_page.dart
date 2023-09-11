import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_manager/bloc/settings_cubit.dart';

class BlocPage extends StatefulWidget {
  const BlocPage({super.key});

  @override
  State<BlocPage> createState() => _BlocPageState();
}

class _BlocPageState extends State<BlocPage> {
  @override
  Widget build(BuildContext context) {
    var settings = context.watch<SettingsCubit>();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: settings.state.color,
          title: const Text('Bloc Screen'),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.popAndPushNamed(context, '/home');
                },
                icon: const Icon(Icons.home))
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Selected color: ${settings.state.name}',
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, '/bloc/settings');
          },
          child: const Icon(Icons.settings),
        ),
      );
  }
}
