import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hero_animation/app_color.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider<AppColor>.value(
        value: AppColor(),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black54,
            title: Consumer<AppColor>(
              builder: (context, appColor, _) => Text(
                'Provider State Management',
                style: TextStyle(color: appColor.color),
              ),
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Consumer<AppColor>(
                  builder: (context, appColor, _) => AnimatedContainer(
                    margin: EdgeInsets.all(5),
                    width: 100,
                    height: 100,
                    color: appColor.color,
                    duration: Duration(milliseconds: 500),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(margin: EdgeInsets.all(5), child: Text("GB")),
                    Consumer<AppColor>(
                      builder: (context, appColor, _) => Switch(
                        value: appColor.isLb,
                        onChanged: (newValue) {
                          appColor.isLb = newValue;
                        },
                      ),
                    ),
                    Container(margin: EdgeInsets.all(5), child: Text("LB")),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// <-- HERO ANIMATION -->
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Latihan Hero Animation'),
//         ),
//         body: ClipRRect(
//           borderRadius: BorderRadius.circular(200),
//           child: Container(
//             width: 100,
//             height: 100,
//             child: Image(
//               image: NetworkImage(
//                   'https://cdn.auth0.com/blog/illustrations/nextjs.png'),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
