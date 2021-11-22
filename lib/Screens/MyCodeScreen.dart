import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrGenratorWidget extends StatefulWidget {
  @override
  State<QrGenratorWidget> createState() => _QrGenratorWidgetState();
}

class _QrGenratorWidgetState extends State<QrGenratorWidget> {
  var myCode;
  final qrCodeinputController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    myCode = "092734572345";
    return Scaffold(
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "This is your account code:",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              Container(
                child: Text(myCode),
              ),
            ],
          ),
          Divider(),
          Container(
            margin: EdgeInsets.all(30),
            child: QrImage(
              backgroundColor: Colors.white,
              data: myCode,
              version: QrVersions.auto,
              gapless: true,
              embeddedImageStyle: QrEmbeddedImageStyle(),
            ),
          ),
        ],
      ),
    );
  }
}
