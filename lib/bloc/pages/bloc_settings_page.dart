import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_manager/bloc/settings_cubit.dart';
import 'package:state_manager/models/color_list_model.dart';

class BlocSettingsPage extends StatefulWidget {
  const BlocSettingsPage({super.key});

  @override
  State<BlocSettingsPage> createState() => _BlocSettingsPageState();
}

class _BlocSettingsPageState extends State<BlocSettingsPage> {
  @override
  Widget build(BuildContext context) {
    var settings = context.watch<SettingsCubit>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: settings.state.color,
        title: const Text("Settings"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                  leading:
                      CircleAvatar(backgroundColor: colorsList[index].color),
                  title: Text(
                    colorsList[index].name,
                    style: TextStyle(color: colorsList[index].color),
                  ),
                  onTap: () {
                    context
                        .read<SettingsCubit>()
                        .selectColor(colorsList[index]);
                  });
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
