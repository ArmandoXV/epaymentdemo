import 'package:flutter/material.dart';

// screens
import 'Constants/Routs.dart';
import 'Constants/Theme.dart';

void main() => runApp(MainWidget());

class MainWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: myTheme(),
      title: "E-Bridge",
      initialRoute: "/onboarding",
      routes: route,
    );
  }
}
