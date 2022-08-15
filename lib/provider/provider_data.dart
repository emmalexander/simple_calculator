import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class ProviderData extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.dark;
  bool isDark = true;
  String _inputVal = '';
  String _answer = '0';

  get themeMode => _themeMode;
  get inputVal => _inputVal;
  get answer => _answer;

  void themeChange() {
    if (isDark == true) {
      _themeMode = ThemeMode.light;
      isDark = false;
    } else {
      _themeMode = ThemeMode.dark;
      isDark = true;
    }
    notifyListeners();
  }

  void inputValues(String question) {
    switch (question) {
      case 'e':
        _inputVal += 'e';
        break;
      case 'π':
        _inputVal += 'π';
        break;
      case 'sin':
        _inputVal += 'sin';
        break;
      case 'deg':
        _inputVal += 'deg';
        break;
      case 'C':
        _inputVal = '';
        _answer = '0';
        break;
      case '(':
        _inputVal += '(';
        break;
      case ')':
        _inputVal += ')';
        break;
      case '/':
        _inputVal += '/';
        break;
      case '7':
        _inputVal += '7';
        break;
      case '8':
        _inputVal += '8';
        break;
      case '9':
        _inputVal += '9';
        break;
      case 'x':
        _inputVal += 'x';
        break;
      case '4':
        _inputVal += '4';
        break;
      case '5':
        _inputVal += '5';
        break;
      case '6':
        _inputVal += '6';
        break;
      case '-':
        _inputVal += '-';
        break;
      case '1':
        _inputVal += '1';
        break;
      case '2':
        _inputVal += '2';
        break;
      case '3':
        _inputVal += '3';
        break;
      case '+':
        _inputVal += '+';
        break;
      case '0':
        _inputVal += '0';
        break;
      case '.':
        _inputVal += '.';
        break;
      case '=':
        evalQuestion();
        break;
      default:
    }
    notifyListeners();
  }

  void evalQuestion() {
    String _finalInput = _inputVal;
    _finalInput = _finalInput.replaceAll('x', '*');
    Parser p = Parser();
    Expression exp = p.parse(_finalInput);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    _answer = eval.toString();
  }
}
