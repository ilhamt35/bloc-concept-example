import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_concept/bloc_concept.dart';
import 'package:flutter_bloc_concept/color_bloc_package.dart';

import 'bloc_package.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return BlocConcept();
                  }));
                },
                child: Text('Bloc Concept')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return BlocProvider<ColorBlocPackage>(
                        create: (context) =>
                            ColorBlocPackage(Colors.blueAccent),
                        child: BlocPackage());
                  }));
                },
                child: Text('Bloc Package'))
          ],
        ),
      ),
    );
  }
}
