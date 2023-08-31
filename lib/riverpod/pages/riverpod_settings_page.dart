import 'package:flutter/material.dart';
// import 'package:state_manager/models/color_list_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_manager/riverpod/providers.dart';

class RiverpodSettingsPage extends ConsumerStatefulWidget {
  const RiverpodSettingsPage({super.key});

  @override
  ConsumerState<RiverpodSettingsPage> createState() =>
      _RiverpodSettingsPageState();
}

class _RiverpodSettingsPageState extends ConsumerState<RiverpodSettingsPage> {
  // final List<ItemColor> colorSet = colorsList;

  Color barColor = Colors.pink;

  @override
  Widget build(BuildContext context) {
    final colorsList = ref.watch(colorListProvider);
    final itemColor = ref.watch(settingsProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: itemColor.color,
        title: const Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: CircleAvatar(backgroundColor: colorsList[index].color),
                title: Text(
                  colorsList[index].name,
                  style: TextStyle(color: colorsList[index].color),
                ),
                onTap: () {
                  ref
                      .read(settingsProvider.notifier)
                      .getColorSelected(colorsList[index]);
                },
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(
                  height: 1,
                  color: Colors.green,
                ),
            itemCount: colorsList.length),
      ),
    );
  }
}
