import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_calculator/main_page.dart';
import 'package:simple_calculator/buttons/neommorphic_button.dart';
import 'package:simple_calculator/provider/provider_data.dart';
import 'package:simple_calculator/utils/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) {
        return ProviderData();
      },
      child: Consumer<ProviderData>(builder: (context, themeChange, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: Themes.light,
          themeMode: themeChange.themeMode,
          darkTheme: Themes.dark,
          home: MainPage(), //MainPage(),
        );
      }),
    );
  }
}
