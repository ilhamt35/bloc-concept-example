import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

enum ColorEvent { toBlack, toBlueAccent }

class ColorBlocPackage extends HydratedBloc<ColorEvent, Color> {
  ColorBlocPackage() : super(Colors.blueAccent);

  @override
  Stream<Color> mapEventToState(ColorEvent event) async* {
    yield (event == ColorEvent.toBlack) ? Colors.black : Colors.blueAccent;
  }

  @override
  Color? fromJson(Map<String, dynamic> json) {
    return Color(json['color'] as int);
  }

  @override
  Map<String, int>? toJson(Color state) {
    return {'color': state.value};
  }
}
