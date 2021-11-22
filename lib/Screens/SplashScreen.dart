import 'dart:ui';
import 'package:epaymentdemo/Constants/Theme.dart';
import 'package:epaymentdemo/Widget/LabeledRadoiWidget.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/img/logoName.png"),
          ),
        ),
      ),
      Container(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: MaterialColors.myMainColor,
                  borderRadius: new BorderRadius.vertical(
                    top: new Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            languageSheet(context);
                          },
                          child: Text(
                            "اختيار اللغة: العربية",
                            style: TextStyle(
                                color: Color(
                                  MaterialColors.caption.value,
                                ),
                                fontSize: 20),
                          ),
                        ),
                        SizedBox(width: 40),
                        TextButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                MaterialColors.bgColorScreen),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/login');
                          },
                          child: Text(
                            " تسجيل الدخول  ",
                            style: TextStyle(
                              color: Color(MaterialColors.myMainColor.value),
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ]));
  }

  Future languageSheet(BuildContext context) {
    bool _isRadioSelected = false;

    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: 200,
          child: Column(
            children: [
              Flexible(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "اختيار اللغة",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              Flexible(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <LabeledRadio>[
                    LabeledRadio(
                      label: 'اللغة العربية',
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      value: false,
                      groupValue: _isRadioSelected,
                      onChanged: (bool newValue) {
                        setState(() {
                          _isRadioSelected = newValue;
                        });
                      },
                    ),
                    LabeledRadio(
                      label: 'English',
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      value: true,
                      groupValue: _isRadioSelected,
                      onChanged: (bool newValue) {
                        setState(
                          () {
                            _isRadioSelected = newValue;
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
