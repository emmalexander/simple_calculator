import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_calculator/provider/provider_data.dart';

class EquationContainer extends StatelessWidget {
  const EquationContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ProviderData>(builder: (context, equation, child) {
      return Container(
        height: 40,
        child: Text(
          equation.inputVal.toString(),
          style: TextStyle(fontSize: 20),
        ),
      );
    });
  }
}
