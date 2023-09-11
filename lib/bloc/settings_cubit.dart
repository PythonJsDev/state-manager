import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_manager/models/color_list_model.dart';

class SettingsCubit extends Cubit<ItemColor> {
  SettingsCubit()
      : super(
          ItemColor(name: "Pink", color: Colors.pink),
        );

  void selectColor(ItemColor item) {
    emit(item);
  }
}
