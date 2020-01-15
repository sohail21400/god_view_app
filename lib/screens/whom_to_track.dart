import 'package:flutter/material.dart';

import '../constants.dart';

class WhomToTrack extends StatefulWidget {
  @override
  WhomToTrackState createState() => WhomToTrackState();
}

class WhomToTrackState extends State<WhomToTrack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          // SingleChildScrollView(
          //   physics: AlwaysScrollableScrollPhysics(),
          //   child: 
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                // SizedBox(height: 80),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    height: 400,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Whom do you\nwanna track?',
                          style: TextStyle(fontSize: 40, color: Colors.black54),
                        ),
                        SizedBox(height: 50),
                        Text(
                          "name",
                          style: headingFive,
                        ),
                        SizedBox(height: 10),
                        Container(
                          decoration: boxDecorationStyle,
                          padding: EdgeInsets.symmetric(
                            horizontal: 15,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        SizedBox(height: 18),
                        Text(
                          "phone number",
                          style: headingFive,
                        ),
                        SizedBox(height: 10),
                        Container(
                          decoration: boxDecorationStyle,
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: TextField(
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        SizedBox(height: 30),
                        Center(child: Text("use this app at your own risk!")),
                        
                        
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed("/data_list");
                  },
                  child: Container(
                    height: 50,
                    width: 210,
                    // child: Center(child: Text('Proceed', style: headingThree,)),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                )
              ],
            ),
          //),
        ],
      ),
    );
  }
}