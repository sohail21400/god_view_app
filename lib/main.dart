import 'package:flutter/material.dart';
import 'package:god_view/route_generator.dart';
// import 'package:god_view/screens/login_screen.dart';
// import 'package:god_view/screens/whom_do_wanna_track.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      initialRoute: "/whom_to_track",
      onGenerateRoute: RouterGenerator.generateRoute,
      // home: WhomToTrack(),
    );
  }
}