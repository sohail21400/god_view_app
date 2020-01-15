import 'package:flutter/material.dart';
import 'dart:convert';

class DataList extends StatefulWidget {
  @override
  DataListState createState() => DataListState();
}

class DataListState extends State<DataList> {
  Widget listItem(String leading, String trailing) {
    Widget timeWidget() {
      return Text(
        leading,
        style: TextStyle(color: Colors.black54),
      );
    }

    Widget statusWidget() {
      Color color;
      if (trailing == "online") {
        color = Colors.green;
      } else if (trailing == "offline") {
        color = Colors.red;
      }
      else{
        color = Colors.black;
      }
      return Text(
        trailing,
        style: TextStyle(color: color),
      );
    }

    return ListTile(
      leading: timeWidget(),
      trailing: statusWidget(),
    );
  }

  // Widget buildListView(BuildContext context, AsyncSnapshot<String> snapshot) {
  //   var jsonData = json.decode(snapshot.data.toString());
  //   return ListView.builder(
  //     itemCount: jsonData == null ? 0 : jsonData.length,
  //     itemBuilder: (context, index) {
  //       return Container(
  //           child: Row(
  //         children: <Widget>[
  //           Text(jsonData[index]["time"]),
  //           Text(jsonData[index]["status"]),
  //         ],
  //       ));
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: FutureBuilder(
        future: DefaultAssetBundle.of(context)
            .loadString('lib\\data\\demo_json.json'),
        builder: (context, snapshot) {
          var jsonData = json.decode(snapshot.data.toString());
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(width: 0.5),
                  right: BorderSide(width: 0.5),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  itemCount: jsonData == null ? 0 : jsonData.length,
                  itemBuilder: (context, index) {
                    return listItem(
                        jsonData[index]["time"], jsonData[index]["status"]);
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
