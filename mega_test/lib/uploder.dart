import 'package:path/path.dart';
import 'package:async/async.dart';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class UploaderImage extends StatefulWidget {
  @override
  _UploaderImageState createState() => _UploaderImageState();
}

class _UploaderImageState extends State<UploaderImage> {
  String text;
  File file;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Form(
            child: ListView(
              children: <Widget>[
                TextField(
                  onChanged: (value) {
                    text = value;
                  },
                ),
                TextField(
                  onChanged: (value) {
                    file = value as File;
                  },
                ),
              ],
            ),
          ),
          RaisedButton(
            child: Text('Chick'),
            onPressed: () {
              _asyncFileUpload(text, file);
            },
          )
        ],
      ),
    );
  }

  _asyncFileUpload(String text, File file) async {
    //create multipart request for POST or PATCH method
    var request = http.MultipartRequest("POST", Uri.parse("<url>"));
    //add text fields
    request.fields["text_field"] = text;
    //create multipart using filepath, string or bytes
    var pic = await http.MultipartFile.fromPath("file_field", file.path);
    //add multipart to request
    request.files.add(pic);
    var response = await request.send();

    //Get the response from the server
    var responseData = await response.stream.toBytes();
    var responseString = String.fromCharCodes(responseData);
    print(responseString);
  }
}
