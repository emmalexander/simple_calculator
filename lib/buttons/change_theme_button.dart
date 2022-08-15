import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:simple_calculator/provider/provider_data.dart';

class ChangeThemeButton extends StatelessWidget {
  ChangeThemeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _provider = Provider.of<ProviderData>(context, listen: false);
    double h = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        _provider.themeChange();
      },
      child: Consumer<ProviderData>(builder: (context, provider, child) {
        return Icon(
          provider.isDark ? Icons.sunny : Icons.dark_mode,
          size: h / 26.76,
        );
        ;
      }),
    );
  }
}
