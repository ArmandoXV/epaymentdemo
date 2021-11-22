import 'package:epaymentdemo/Constants/Theme.dart';
import 'package:epaymentdemo/Widget/AccountWidget.dart';
import 'package:epaymentdemo/Widget/ProfileField.dart';
import 'package:epaymentdemo/Widget/drawer.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      drawerDragStartBehavior: DragStartBehavior.start,

      appBar: AppBar(
        centerTitle: true,
        title: Text("E-BRiDGE"),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(Icons.more_vert),
              )),
        ],
      ),
      //the main column of the home screen
      body: Column(
        children: [
          Flexible(
            //the column of the use prfile
            child: Container(
              color: MaterialColors.myMainColor,
              child: Container(
                margin: EdgeInsets.all(30),
                child: Column(
                  children: [
                    Flexible(
                      flex: 2,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "معلومات الحساب",
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(Colors.white.value),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    ProfileFiledWidget("محمد الاحمد", Icons.person_outline),
                    ProfileFiledWidget("العنوان", Icons.location_city),
                    ProfileFiledWidget(
                        "البريد الالكتروني", Icons.email_outlined),
                    ProfileFiledWidget("0943655760", Icons.phone),
                    Divider(),
                    Flexible(
                      flex: 6,
                      child: CarouselSlider(
                        options: CarouselOptions(height: 400.0),
                        items: [
                          AccountWidget(
                            accountName: "حساب التوفير",
                            accountNumber: "092734572345",
                            balance: 7500000,
                          ),
                          AccountWidget(
                            accountName: "حساب جاري",
                            accountNumber: "092734572345",
                            balance: 7500000,
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
