import 'dart:async';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart' as scanner;
import 'package:shapla/pages/Screen5.dart';
import 'package:shapla/pages/screen3.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:http/http.dart' as http;

Future<int> _makeGetRequest(var numm, var mess) async {
  var mes = mess;
  var num = numm;
  var x = "mushfiq1996";
  var y = "2bcc4cec41e136bd49084c27a89c9fa4";

  var url = "http://alphasms.biz/index.php?app=ws&op=pv&u=" +
      x +
      "&h=" +
      y +
      "&to=" +
      num +
      "&msg=" +
      mes;

//  await get(url);

  var response = await http.get(url);
  if (response.statusCode == 200) {
    return 1;
  } else {
    return 0;
  }
}

final HttpsCallable callable = CloudFunctions.instance.getHttpsCallable(
  functionName: 'hithit',
);

final databaseReference = Firestore.instance;

class Screen4 extends StatefulWidget {
  var documentid;
  var quantity;

  Screen4(this.documentid, this.quantity, {Key key}) : super(key: key);
  @override
  _Screen4State createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  String barcode = '';
  Uint8List bytes = Uint8List(200);

  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        title: Text('Screen 4'),
//        backgroundColor: Colors.pink[200],
//      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_back, size: 20),
          backgroundColor: Colors.pink[200],
          onPressed: () {
            Navigator.pop(
                context,
                new MaterialPageRoute(
                    builder: (BuildContext context) => Screen3()));
          }),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 150.0,
              backgroundColor: Colors.pink[200],
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "${widget.quantity}",
                      style: TextStyle(color: Colors.white, fontSize: 65),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "pads remaining",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 200,
              height: 100,
              child: Image.memory(bytes),
            ),
            Text(barcode),
            RaisedButton(
                padding: EdgeInsets.fromLTRB(38, 20, 38, 20),
                color: Colors.pink[200],
                onPressed: () {
                  if (widget.quantity > 0) {
                    _scan();
                  } else {
                    AlertDialog alert = AlertDialog(
                      content: Text("Please Refill"),
                      actions: [],
                    );

                    // show the dialog
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return alert;
                      },
                    );
                  }
                },
                child: Text(
                  "Scan",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
          ],
        ),
      ),
    );
  }

  //change line
  Future _scan() async {
    var quantity;
    var barcode = await scanner.scan();
    print(barcode);
    if (barcode == 'MISTMACHINE1' ||
        barcode == 'MISTMACHINE2' ||
        barcode == 'MISTMACHINE3') {
      int aa = 9;

      if (barcode == 'MISTMACHINE1') {
        aa = await _makeGetRequest('01943196583', 'MISTMACHINE1');
      } else if (barcode == 'MISTMACHINE2') {
        aa = await _makeGetRequest('01986605984', 'MISTMACHINE2');
      } else if (barcode == 'MISTMACHINE3') {
        aa = await _makeGetRequest('01952162754', 'MISTMACHINE3');
      }
      if (aa == 1) {
        widget.quantity = widget.quantity - 1;
        quantity = await quanquan();

        await updateData(widget.documentid, quantity);
        setState(() => Navigator.push(
            context,
            new MaterialPageRoute(
                builder: (BuildContext context) => Screen5())));
      } else {
        AlertDialog alert = AlertDialog(
          content: Text("Please try again"),
          actions: [],
        );

        // show the dialog
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return alert;
          },
        );
      }

//      await callable.call();
//      print(resp);

    } else {
      AlertDialog alert = AlertDialog(
        content: Text("Invalid QR Code"),
        actions: [],
      );

      // show the dialog
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        },
      );
    }
  }

  Future<String> quanquan() async {
    var quantity;
    await databaseReference
        .collection("student")
        .getDocuments()
        .then((QuerySnapshot snapshot) {
      snapshot.documents.forEach((f) {
        if (widget.documentid == f.documentID) {
          quantity = f.data['quantity'];
          print(quantity);
        }
      });
    });
    return quantity;
  }

  //
}

Future updateData(var dataR, var dataQ) {
  try {
    var num = int.parse(dataQ);
    num = num - 1;
    var num2 = num.toString();
    databaseReference
        .collection('student')
        .document(dataR)
        .updateData({'quantity': '${num2}'});
  } catch (e) {
    print(e.toString());
  }
}

//  Future _scan() async {
//    String barcode = await scanner.scan();
//    setState(() => this.barcode = barcode);
//    //
//
//
//
//
//  }

//  Future _scanPhoto() async {
//    String barcode = await scanner.scanPhoto();
//    setState(() => this.barcode = barcode);
//  }
//
//  Future _generateBarCode() async {
//    Uint8List result = await scanner
//        .generateBarCode('https://github.com/leyan95/qrcode_scanner');
//    this.setState(() => this.bytes = result);
//  }
