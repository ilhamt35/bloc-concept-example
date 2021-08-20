import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_concept/color_bloc_package.dart';

class BlocPackage extends StatelessWidget {
  const BlocPackage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ColorBlocPackage bloc = BlocProvider.of<ColorBlocPackage>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Package'),
      ),
      body: Center(
          child: BlocBuilder<ColorBlocPackage, Color>(
        builder: (context, newColor) => AnimatedContainer(
          width: 150,
          height: 150,
          duration: Duration(milliseconds: 500),
          color: newColor,
        ),
      )),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'btn1',
            onPressed: () {
              bloc.add(ColorEvent.toBlueAccent);
            },
            backgroundColor: Colors.blueAccent,
          ),
          FloatingActionButton(
            heroTag: 'btn2',
            onPressed: () {
              bloc.add(ColorEvent.toBlack);
            },
            backgroundColor: Colors.black,
          )
        ],
      ),
    );
  }
}
