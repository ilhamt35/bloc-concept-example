import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';

enum ColorEvent { to_black, to_blue_accent }

class ColorBlocPackage extends Bloc<ColorEvent, Color> {
  Color _color = Colors.black;

  @override
  Stream<Color> mapEventToState(ColorEvent event) async* {
    _color = (event == ColorEvent.to_black) ? Colors.black : Colors.blueAccent;
    yield _color;
  }

  @override
  Color get initialState => Colors.black;
}
