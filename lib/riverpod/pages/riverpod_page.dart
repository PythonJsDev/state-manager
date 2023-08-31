import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_manager/riverpod/providers.dart';
class RiverpodPage extends ConsumerStatefulWidget {
  const RiverpodPage({super.key});

  @override
  ConsumerState<RiverpodPage> createState() => _RiverpodPageState();
}

class _RiverpodPageState extends ConsumerState<RiverpodPage> {
  @override
  Widget build(BuildContext context) {
    final settings = ref.watch(settingsProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: settings.color,
        title: const Text('Riverpod Screen'),
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
              'Selected color: ${settings.name}',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/riverpod/settings');
        },
        child: const Icon(Icons.settings),
      ),
    );
    
  }
}