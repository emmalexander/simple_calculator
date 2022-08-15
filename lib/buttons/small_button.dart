import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_calculator/provider/provider_data.dart';
import 'package:simple_calculator/utils/app_colors.dart';

class SmallButtonWidget extends StatelessWidget {
  final String buttonText;
  final Color buttonColor;
  final Color textColor;
  final Function()? onTap;

  const SmallButtonWidget({
    Key? key,
    this.buttonColor = const Color(0xFFE8F0F2),
    required this.buttonText,
    this.textColor = Colors.black,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _provider = Provider.of<ProviderData>(context, listen: false);
    double h = MediaQuery.of(context).size.height; //802.9
    double w = MediaQuery.of(context).size.width; //392.7
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: h / 10.7,
        height: w / 11.22, //35
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(h / 26.76)),
          color:
              _provider.isDark ? AppColors.smallButtonDarkColor : buttonColor,
        ),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
              color: _provider.isDark ? Colors.white : textColor,
              fontFamily: 'OpenSans',
              fontSize: h / 50.18,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}
