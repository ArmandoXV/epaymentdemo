import 'package:epaymentdemo/Constants/Theme.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MaterialColors.myMainColor,
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "البنك الالكتروني",
                  style: TextStyle(
                    color: MaterialColors.myMainColor,
                    fontSize: 30,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("سجل الدخول اولاً"),
              ],
            ),
            _loginForm(),
          ],
        ),
      ),
    );
  }

  Widget _loginForm() {
    return Form(
      child: Padding(
        padding: EdgeInsets.all(0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _userNameField(),
            _passwordField(),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              child: _loginBtn(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _loginBtn() {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushReplacementNamed(context, "/home");
      },
      child: Text(
        "تسجيل الدخول",
        style: TextStyle(fontSize: 20),
      ),
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all<Color>(MaterialColors.myMainColor),
      ),
    );
  }

  Widget _passwordField() {
    return TextFormField(
      decoration: InputDecoration(
        icon: Icon(Icons.security),
        hintText: 'Password',
      ),
    );
  }

  Widget _userNameField() {
    return TextFormField(
      decoration: InputDecoration(
        fillColor: MaterialColors.myMainColor,
        icon: Icon(Icons.person),
        hintText: 'UserName',
      ),
    );
  }
}
