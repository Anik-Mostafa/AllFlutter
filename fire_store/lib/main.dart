//import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:flutter/material.dart';
//
//void main() => runApp(MyApp());
//
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'Baby Names',
//      home: MyHomePage(),
//    );
//  }
//}
//
//class MyHomePage extends StatefulWidget {
//  @override
//  _MyHomePageState createState() {
//    return _MyHomePageState();
//  }
//}
//
//class _MyHomePageState extends State<MyHomePage> {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(title: Text('Baby Name Votes')),
//      body: _buildBody(context),
//    );
//  }
//
//  Widget _buildBody(BuildContext context) {
//    return StreamBuilder<QuerySnapshot>(
//      stream: Firestore.instance.collection('baby').snapshots(),
//      builder: (context, snapshot) {
//        if (!snapshot.hasData) return LinearProgressIndicator();
//
//        return _buildList(context, snapshot.data.documents);
//      },
//    );
//  }
//
//  Widget _buildList(BuildContext context, List<DocumentSnapshot> snapshot) {
//    return ListView(
//      padding: const EdgeInsets.only(top: 20.0),
//      children: snapshot.map((data) => _buildListItem(context, data)).toList(),
//    );
//  }
//
//  Widget _buildListItem(BuildContext context, DocumentSnapshot data) {
//    final record = Record.fromSnapshot(data);
//
//    return Padding(
//      key: ValueKey(record.name),
//      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
//      child: Container(
//        decoration: BoxDecoration(
//          border: Border.all(color: Colors.grey),
//          borderRadius: BorderRadius.circular(5.0),
//        ),
//        child: ListTile(
//          title: Text(record.name),
//          trailing: Text(record.votes.toString()),
//          onTap: () =>
//              record.reference.updateData({'votes': FieldValue.increment(1)}),
//        ),
//      ),
//    );
//  }
//}
//
//class Record {
//  final String name;
//  final int votes;
//  final DocumentReference reference;
//
//  Record.fromMap(Map<String, dynamic> map, {this.reference})
//      : assert(map['name'] != null),
//        assert(map['votes'] != null),
//        name = map['name'],
//        votes = map['votes'];
//
//  Record.fromSnapshot(DocumentSnapshot snapshot)
//      : this.fromMap(snapshot.data, reference: snapshot.reference);
//
//  @override
//  String toString() => "Record<$name:$votes>";
//}
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Scaffold'),
      ),
      body: Center(
        child: Text(
          "This is Homepage",
          style: TextStyle(
            color: Colors.black,
            fontSize: 40.0,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          elevation: 10.0,
          child: Icon(Icons.add),
          onPressed: () {
            print('I am Floating button');
          }),
      drawer: Drawer(
        elevation: 16.0,
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("xyz"),
              accountEmail: Text("xyz@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text("xyz"),
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text("abc"),
                )
              ],
            ),
            ListTile(
              title: new Text("All Inboxes"),
              leading: new Icon(Icons.mail),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: new Text("Primary"),
              leading: new Icon(Icons.inbox),
            ),
            ListTile(
              title: new Text("Social"),
              leading: new Icon(Icons.people),
            ),
            ListTile(
              title: new Text("Promotions"),
              leading: new Icon(Icons.local_offer),
            )
          ],
        ),
      ),
//      bottomNavigationBar: BottomNavigationBar(
//        currentIndex: 0,
//        fixedColor: Colors.teal,
//        items: [
//          BottomNavigationBarItem(
//            title: Text("Home"),
//            icon: Icon(Icons.home),
//          ),
//          BottomNavigationBarItem(
//            title: Text("Search"),
//            icon: Icon(Icons.search),
//          ),
//          BottomNavigationBarItem(
//            title: Text("Add"),
//            icon: Icon(Icons.add_box),
//          ),
//        ],
//        onTap: (int index) {},
//      ),
    );
  }
}
