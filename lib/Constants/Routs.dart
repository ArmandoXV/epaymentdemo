import 'package:epaymentdemo/Screens/Home.dart';
import 'package:epaymentdemo/Screens/Login.dart';
import 'package:epaymentdemo/Screens/MyCodeScreen.dart';
import 'package:epaymentdemo/Screens/SplashScreen.dart';
import 'package:epaymentdemo/Screens/TransferScreen.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> get route {
  return <String, WidgetBuilder>{
    "/onboarding": (BuildContext context) => new Onboarding(),
    "/login": (BuildContext context) => new Login(),
    "/home": (BuildContext context) => new Home(),
    "/myCode": (BuildContext context) => new QrGenratorWidget(),
    "/Transfer": (BuildContext context) => new TransferWidget(),
  };
}
