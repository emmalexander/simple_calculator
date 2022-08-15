import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_calculator/provider/provider_data.dart';
import 'package:simple_calculator/utils/app_colors.dart';

class EqualButton extends StatelessWidget {
  final Function()? onTap;
  const EqualButton({Key? key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _provider = Provider.of<ProviderData>(context, listen: false);
    double h = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: h / 10.7,
        height: h / 10.7,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(h / 26.76)),
          color: _provider.isDark
              ? AppColors.equalDarkColor
              : AppColors.equalLightColor,
        ),
        child: Center(
          child: Text(
            '=',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans',
              fontSize: h / 32.11,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
