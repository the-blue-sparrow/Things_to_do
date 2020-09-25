import 'package:flutter/material.dart';
import 'package:places/things_to_do/places.dart';

class ListViewWidget extends StatelessWidget {
  // final ClassToGo;
  // ListViewWidget(this.ClassToGo);
  // const ListViewWidget({Key key}) : super(key: key);
  final List list;
  ListViewWidget(this.list);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (BuildContext context, int index) {
        String item = list[index];
        return Card(
          shadowColor: Colors.red,
          child: ListTile(
            title: Text('$item'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Todo(item),
                ),
              );
              print('Let\'s roll $item');
            },
          ),
        );
      },
    );
  }
}
