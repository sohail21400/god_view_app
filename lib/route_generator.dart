import 'package:flutter/material.dart';
import 'package:god_view/screens/data_list.dart';
import 'package:god_view/screens/home_page.dart';
import 'package:god_view/screens/intro_page.dart';
import 'package:god_view/screens/whom_to_track.dart';

class RouterGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    print(args);
    switch (settings.name) {
      case '/intro_page':
        return MaterialPageRoute(builder: (_) => IntroPage());
      case '/home_page':
        return MaterialPageRoute(builder: (_) {
          return HomePage();
        });
      case '/whom_to_track':
        return MaterialPageRoute(builder: (_) => WhomToTrack());
      case '/data_list':
        return MaterialPageRoute(builder: (_) => DataList());

        // if (args is String) {
        //   //because the second page is taking data of type string.
        //   return MaterialPageRoute(builder: (_) {
        //     return HomePage();
        //   });
        // }
        // if the data passed is not of type string
        // return errorRoute();

      default:
        return errorRoute();
    }
  }

  static Route<dynamic> errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
          body: Center(
        child: Text('Error'),
      ));
    });
  }
}
