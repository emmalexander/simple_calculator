import 'package:flutter/material.dart';
import 'package:simple_calculator/buttons/normal_button.dart';
import 'package:simple_calculator/provider/provider_data.dart';
import 'package:simple_calculator/utils/app_colors.dart';
import 'package:simple_calculator/utils/result_container.dart';
import 'buttons/c_button.dart';
import 'package:provider/provider.dart';
import 'buttons/change_theme_button.dart';
import 'buttons/equal_button.dart';
import 'buttons/operators_button.dart';
import 'buttons/small_button.dart';
import 'utils/equation_container.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _provider = Provider.of<ProviderData>(context, listen: false);
    double h = MediaQuery.of(context).size.height; //802.9
    double w = MediaQuery.of(context).size.width; //392.7
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
            top: h / 26.76, left: w / 15.7, right: w / 15.7, bottom: h / 32.11),
        decoration: BoxDecoration(
          color: _provider.isDark ? Colors.black87 : Colors.white,
        ),
        child: Column(
          //Second Error
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            //input screen
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ChangeThemeButton(),
              ],
            ),
            //result screen
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                EquationContainer(),
                ResultContainer(),
              ],
            ),
            //Buttons array Column Section
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmallButtonWidget(
                        buttonText: 'e',
                        onTap: () {
                          _provider.inputValues('e');
                        } //_provider.inputValues('e'),
                        ),
                    SmallButtonWidget(
                        buttonText: 'π',
                        onTap: () {
                          _provider.inputValues('π');
                        }),
                    SmallButtonWidget(
                        buttonText: 'sin',
                        onTap: () {
                          _provider.inputValues('sin');
                        }),
                    SmallButtonWidget(
                        buttonText: 'deg',
                        onTap: () {
                          _provider.inputValues('deg');
                        }),
                  ],
                ),
                SizedBox(height: h / 80.29),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CButton(onTap: () {
                      _provider.inputValues('C');
                    }),
                    NormalButton(
                        buttonText: '(',
                        onTap: () {
                          _provider.inputValues('(');
                        }),
                    NormalButton(
                        buttonText: ')',
                        onTap: () {
                          _provider.inputValues(')');
                        }),
                    OperatorButton(
                        buttonText: '/',
                        onTap: () {
                          _provider.inputValues('/');
                        }),
                  ],
                ),
                SizedBox(height: h / 80.29),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    NormalButton(
                        buttonText: '7',
                        onTap: () {
                          _provider.inputValues('7');
                        }),
                    NormalButton(
                        buttonText: '8',
                        onTap: () {
                          _provider.inputValues('8');
                        }),
                    NormalButton(
                        buttonText: '9',
                        onTap: () {
                          _provider.inputValues('9');
                        }),
                    OperatorButton(
                        buttonText: 'x',
                        onTap: () {
                          _provider.inputValues('x');
                        }),
                  ],
                ),
                SizedBox(height: h / 80.29),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    NormalButton(
                        buttonText: '4',
                        onTap: () {
                          _provider.inputValues('4');
                        }),
                    NormalButton(
                        buttonText: '5',
                        onTap: () {
                          _provider.inputValues('5');
                        }),
                    NormalButton(
                        buttonText: '6',
                        onTap: () {
                          _provider.inputValues('6');
                        }),
                    OperatorButton(
                        buttonText: '-',
                        onTap: () {
                          _provider.inputValues('-');
                        }),
                  ],
                ),
                SizedBox(height: h / 80.29),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    NormalButton(
                        buttonText: '1',
                        onTap: () {
                          _provider.inputValues('1');
                        }),
                    NormalButton(
                        buttonText: '2',
                        onTap: () {
                          _provider.inputValues('2');
                        }),
                    NormalButton(
                        buttonText: '3',
                        onTap: () {
                          _provider.inputValues('3');
                        }),
                    OperatorButton(
                        buttonText: '+',
                        onTap: () {
                          _provider.inputValues('+');
                        }),
                  ],
                ),
                SizedBox(height: h / 80.29),
                //First Error
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        _provider.inputValues('0');
                      },
                      child: Container(
                        width: (h / 10.7) * 2,
                        height: h / 10.7,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(h / 26.76)),
                            color: _provider.isDark
                                ? AppColors.normalButtonDarkColor
                                : AppColors.normalButtonLightColor),
                        child: Center(
                          child: Text(
                            '0',
                            style: TextStyle(
                              color: _provider.isDark
                                  ? Colors.white
                                  : Colors.black, //Colors.black,
                              fontFamily: 'OpenSans',
                              fontSize: h / 32.11,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                    NormalButton(
                        buttonText: '.',
                        onTap: () {
                          _provider.inputValues('.');
                        }),
                    EqualButton(
                      onTap: () {
                        _provider.inputValues('=');
                      },
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
