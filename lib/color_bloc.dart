import 'dart:async';

import 'package:flutter/material.dart';

enum ColorState { to_black, to_blue_accent }

class ColorBlocConcept {
  Color _color = Colors.black;

  StreamController<ColorState> _eventController =
      StreamController<ColorState>();
  StreamSink<ColorState> get eventSink => _eventController.sink;

  StreamController<Color> _stateController = StreamController<Color>();
  StreamSink<Color> get _stateSink => _stateController.sink;
  Stream<Color> get streamState => _stateController.stream;

  void _mapEventToState(ColorState colorState) {
    if (colorState == ColorState.to_black) {
      _color = Colors.black;
    } else {
      _color = Colors.blueAccent;
    }

    _stateSink.add(_color);
  }

  ColorBlocConcept() {
    _eventController.stream.listen(_mapEventToState);
  }

  void dispose() {
    _eventController.close();
    _stateController.close();
  }
}
