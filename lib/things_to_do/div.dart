import 'package:flutter/material.dart';
import 'package:places/things_to_do/list_view_div.dart';

class Places extends StatefulWidget {
  Places({Key key}) : super(key: key);

  @override
  _PlacesState createState() => _PlacesState();
}

class _PlacesState extends State<Places> {
  List list = [
    'Dhaka',
    'Sylhet',
    'Rajshahi',
    'Khulna',
    'Chittagong',
    'Barishal',
    'Rangpur',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Things to do'),
        backgroundColor: Color(0Xffb22020),
      ),
      body: Container(
        // alignment: Alignment.topLeft,
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 14,
            ),
            Text(
              'Divisions',
              style: TextStyle(
                fontSize: 32,
              ),
            ),
            // SizedBox(
            //   height: 10,
            // ),
            Container(
              child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: ListViewWidget(list),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
