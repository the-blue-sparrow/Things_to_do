import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ListViewWidget extends StatefulWidget {
  // final ClassToGo;
  // ListViewWidget(this.ClassToGo);
  // const ListViewWidget({Key key}) : super(key: key);
  final List list;

  ListViewWidget(this.list);

  @override
  _ListViewWidgetState createState() => _ListViewWidgetState();
}

class _ListViewWidgetState extends State<ListViewWidget> {
  Map data;
  Future<String> _setData(Map map) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String counter = json.encode(map);
    prefs.setString("check", counter);

    return counter;
  }

  Future<String> _getData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String counter = (prefs.getString("check") ?? json.encode(Map()));
    print(counter);
    return counter;
  }

  // bool val = false;
  @override
  void initState() {
    _getData().then(
      (value) {
        this.data = json.decode(value);
        setState(() {});
      },
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.list.length,
      itemBuilder: (BuildContext context, int index) {
        String item = widget.list[index];
        data = data ?? Map();
        print(data);
        data[item] = data[item] ?? false;

        return Card(
            shadowColor: Colors.red,
            child: CheckboxListTile(
              title: Text('$item'),
              value: data[item],
              onChanged: (value) {
                setState(() {
                  data[item] = value;
                  _setData(data).then((value) {
                    // setState(() {});
                  });
                  // print(val);
                });
              },
            )
            // ListTile(
            //   title: Text('$item'),
            //   onTap: () {
            //     print('Let\'s roll $item');
            //   },
            // ),
            );
      },
    );
  }
}
