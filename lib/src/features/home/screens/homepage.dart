import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'dart:html' as html;
// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Row(
//         children: [
//           Expanded(
//             flex: 1,
//             child: Container(
//               color: Colors.black,
//               padding: const EdgeInsets.all(16.0),
//               child: Column(
//                 children: [
//                   TextButton(
//                     onPressed: () {
//                       // Navigator.push(
//                       //   context,
//                       //   MaterialPageRoute(builder: (context) => HomePage()),
//                       // );
//                     },
//                     child: Text('Home'),
//                   ),
//                   TextButton(
//                     onPressed: () {
//                       GoRouter.of(context).pushNamed("/settings");
//                       // Navigator.push(
//                       //   context,
//                       //   MaterialPageRoute(builder: (context) => SettingsPage()),
//                       // );
//                     },
//                     child: Text('Settings'),
//                   ),
//                   TextButton(
//                     onPressed: () {
//                       // Navigator.push(
//                       //   context,
//                       //   MaterialPageRoute(builder: (context) => ProfilePage()),
//                       // );
//                     },
//                     child: Text('Profile'),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Expanded(
//             flex: 5,
//             child: Center(
//               child: Text('This is HomePage'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

class HomePage extends StatelessWidget {
  // This widget is the root of your application.
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: Row(
              children: [
          Container(
            width: 200,
            color: Colors.red,
            child: Column(
              children: [
                GestureDetector(
                    onTap: () {
                      html.window.history.pushState({}, '', '/#/settings');
                      // Navigator.push(
                      //   context,
                      //   PageRouteBuilder(
                      //     pageBuilder: (context, animation1, animation2) =>
                      //         PageTwo(),
                      //     transitionDuration: Duration.zero,
                      //     reverseTransitionDuration: Duration.zero,
                      //   ),
                      // );
                    },
                    child: Text(
                      "1st screen",
                      style: TextStyle(color: Colors.white),
                    )),
                    SizedBox(height: 40,),
                      GestureDetector(
                    onTap: () {
                      html.window.history.pushState({}, '', '/#/settings');
                      // Navigator.push(
                      //   context,
                      //   PageRouteBuilder(
                      //     pageBuilder: (context, animation1, animation2) =>
                      //         PageTwo(),
                      //     transitionDuration: Duration.zero,
                      //     reverseTransitionDuration: Duration.zero,
                      //   ),
                      // );
                    },
                    child: Text(
                      "2nd screen",
                      style: TextStyle(color: Colors.white),
                    )),
              ],
            ),
          ),
          Expanded(
            child: MaterialApp(
              home: PageOne(),
            ),
          ),
              ],
            ),
        ));
  }
}

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
      appBar: AppBar(
        title: Text("Page Two"),
      ),
    );
  }
}

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text("Open Page Two"),
          onPressed: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation1, animation2) => PageTwo(),
                transitionDuration: Duration.zero,
                reverseTransitionDuration: Duration.zero,
              ),
            );
          },
        ),
      ),
      appBar: AppBar(
        title: Text("Page One"),
      ),
    );
  }
}
