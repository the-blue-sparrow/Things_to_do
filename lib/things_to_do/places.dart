import 'package:flutter/material.dart';
import 'package:places/things_to_do/list_view_places.dart';

class Todo extends StatefulWidget {
  final id;
  Todo(this.id);
  @override
  _TodoState createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  Map data = {
    'Faridpur': [
      'The house and grave of Poet Jashimuddin',
      'Bir Shrestha Munshi Abdur Rouf Museum',
      'Jagat Bandhu Sundar Ashram',
      'Mathurapur Deul',
      'Gerda Mosque',
      'Satoir Mosque',
      'Bhanga Munsif Court Building',
      'District Judge Court Building'
    ],
    'Gazipur': [
      'Nuhash Palli',
      'Mir Jumla Bridge',
      'Garo and Coach Village',
      'New Resorts',
      'Jackfruit',
      'Guava',
      'Vintage Jamindarbari'
    ],
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
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 14,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text(
                'Things to do at \n${widget.id.toString()}!',
                style: TextStyle(
                  fontSize: 32,
                ),
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
