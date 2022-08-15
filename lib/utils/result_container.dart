import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_calculator/provider/provider_data.dart';

class ResultContainer extends StatelessWidget {
  const ResultContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ProviderData>(builder: (context, result, child) {
      return Container(
        height: 80,
        child: Text(
          result.answer.toString(),
          style: TextStyle(fontSize: 40),
        ),
      );
    });
  }
}
