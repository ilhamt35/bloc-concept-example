import 'package:flutter/material.dart';

import 'color_bloc.dart';

class BlocConcept extends StatefulWidget {
  @override
  _BlocConceptState createState() => _BlocConceptState();
}

class _BlocConceptState extends State<BlocConcept> {
  ColorBlocConcept bloc = ColorBlocConcept();

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Bloc Concept'),
        ),
        body: Center(
          child: StreamBuilder(
              initialData: Colors.black,
              stream: bloc.streamState,
              builder: (BuildContext context, AsyncSnapshot<Color> snapshot) {
                return AnimatedContainer(
                  duration: Duration(milliseconds: 250),
                  width: 150,
                  height: 150,
                  color: snapshot.data,
                );
              }),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton(
              onPressed: () {
                bloc.eventSink.add(ColorState.to_black);
              },
              backgroundColor: Colors.black,
            ),
            SizedBox(
              width: 10,
            ),
            FloatingActionButton(
              onPressed: () {
                bloc.eventSink.add(ColorState.to_blue_accent);
              },
              backgroundColor: Colors.blueAccent,
            )
          ],
        ),
      ),
    );
  }
}
