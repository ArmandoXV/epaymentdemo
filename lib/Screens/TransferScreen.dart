import 'package:epaymentdemo/Widget/QrScannerWidget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TransferWidget extends StatefulWidget {
  @override
  State<TransferWidget> createState() => _TransferWidgetState();
}

class _TransferWidgetState extends State<TransferWidget> {
  var result = 'test';
  final transferToAccountController = TextEditingController();
  final amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Theme.of(context).primaryColor)),
              onPressed: () async {
                var code = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => QRViewExample(),
                  ),
                );
                setState(
                  () {
                    result = code;
                    transferToAccountController.text = code;
                  },
                );
              },
              child: Text('Qr Code Scanner'),
            ),
          ),
          // Container(
          //   child: Text("This is a $result"),
          // ),
          Container(
            margin: EdgeInsets.all(30),
            child: TextField(
              style: TextStyle(
                fontSize: 20,
              ),
              decoration: InputDecoration(
                labelText: 'The transfer to account ',
                contentPadding: EdgeInsets.all(1),
              ),
              controller: transferToAccountController,
            ),
          ),
          Container(
            margin: EdgeInsets.all(30),
            child: TextField(
              keyboardType: TextInputType.number,
              style: TextStyle(
                fontSize: 20,
              ),
              decoration: InputDecoration(
                labelText: 'Amount',
                contentPadding: EdgeInsets.all(1),
              ),
              controller: amountController,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.all(30),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Transfer"),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).primaryColor)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
