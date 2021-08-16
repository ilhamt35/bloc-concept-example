import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_concept/color_bloc_package.dart';

class BlocPackage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ColorBlocPackage bloc = BlocProvider.of<ColorBlocPackage>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Bloc Package'),
      ),
      body: Center(
        child: BlocBuilder<ColorBlocPackage, Color>(
          builder: (context, color) => AnimatedContainer(
            duration: Duration(milliseconds: 250),
            width: 150,
            height: 150,
            color: color,
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () {
              bloc.dispatch(ColorEvent.to_black);
            },
            backgroundColor: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              bloc.dispatch(ColorEvent.to_blue_accent);
            },
            backgroundColor: Colors.blueAccent,
          )
        ],
      ),
    );
  }
}
