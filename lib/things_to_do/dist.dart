import 'package:flutter/material.dart';
import 'package:places/things_to_do/list_view_dist.dart';

class District extends StatefulWidget {
  // const District({Key key}) : super(key: key);

  final id;
  District(this.id);

  @override
  _DistrictState createState() => _DistrictState();
}

class _DistrictState extends State<District> {
  Map data = {
    'Dhaka': [
      'Gazipur',
      'Faridpur',
      'Tangail',
      'Dhaka',
      'Narsingdi',
      'Manikganj',
      'Munshiganj',
      'Narayanganj',
      'Mymensingh',
      'Sherpur',
      'Jamalpur',
      'Netrokona',
      'Kishoreganj',
      'Maradipur',
      'Shariatpur',
      'Rajbari',
      'Gopalganj',
    ],
    'Rajshahi': [
      'Bogura',
      'Chapainawabganj',
      'Joypurhat',
      'Naogaon',
      'Natore',
      'Pabna',
      'Rajshahi',
      'Sirajgonj',
    ],
    'Barishal': [
      'Barguna',
      'Barisal',
      'Bhola',
      'Jhalokati',
      'Patuakhali',
      'Pirojpur',
    ],
    'Chittagong': [
      'Bandarban',
      'Brahmanbaria',
      'Chandpur',
      'Chittagong',
      'Comilla',
      'Cox\'s Bazar',
      'Feni',
      'Khagrachhari',
      'Lakshmipur',
      'Noakhali',
      'Rangamati',
    ],
    'Khulna': [
      'Bagerhat',
      'Chuadanga',
      'Jessore',
      'Jhenaidaha',
      'Khulna',
      'Kushtia',
      'Magura',
      'Meherpur',
      'Narail',
      'Satkhira',
    ],
    'Rangpur': [
      'Dinajpur',
      'Gaibandha',
      'Kurigram',
      'Lalmonirhat',
      'Nilphamari',
      'Panchagarh',
      'Rangpur',
      'Thakurgaon',
    ],
    'Sylhet': [
      'Habiganj',
      'Maulvi Bazar',
      'Sunamganj',
      'Sylhet',
    ]
  };
  List list = [];

  @override
  void initState() {
    list = data[widget.id.toString()] ?? ['no entry yet'];
    super.initState();
  }

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
              'Districts of ${widget.id}',
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
