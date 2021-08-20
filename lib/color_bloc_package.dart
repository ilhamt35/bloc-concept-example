import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

enum ColorEvent { toBlack, toBlueAccent }

class ColorBlocPackage extends Bloc<ColorEvent, Color> {
  ColorBlocPackage(Color initialState) : super(initialState);

  @override
  Stream<Color> mapEventToState(ColorEvent event) async* {
    yield (event == ColorEvent.toBlack) ? Colors.black : Colors.blueAccent;
  }
}
