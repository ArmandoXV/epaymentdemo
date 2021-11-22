import 'package:flutter/material.dart';

class ProfileFiledWidget extends StatelessWidget {
  final IconData _myicon;
  final String _value;

  ProfileFiledWidget(this._value, this._myicon);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Container(
        margin: EdgeInsets.all(5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              _value,
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Color(Colors.white.value),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Icon(
                _myicon,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
