import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_manager/models/color_list_model.dart';
// import 'models/riverpod_settings_model.dart';

class RiverpodSettingsModel extends StateNotifier<ItemColor> {
  RiverpodSettingsModel()
      : super(
          ItemColor(name: 'Pink', color: Colors.pink),
        );
  // Item _colorSelected;

  void getColorSelected(ItemColor itemColorSelected) {
    state = itemColorSelected;
  }
}

final colorListProvider = Provider((ref) => colorsList);
final settingsProvider =
    StateNotifierProvider<RiverpodSettingsModel, ItemColor>(
        (ref) => RiverpodSettingsModel());
