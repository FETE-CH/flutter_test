import 'package:flutter/material.dart';
import 'package:flutter_app/CircleAvatarWidget.dart';
import 'package:flutter_app/InputWidget.dart';
import 'package:flutter_app/LoginPage.dart';
import 'package:flutter_app/RadiusImageWidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "你好 Flutter",
      home: Scaffold(appBar: AppBar(title: Text("这是 appbar")), body: MyHome()),
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text('去登录'),
        onPressed: () {
          //不定义路由的方式跳转
          //Navigator 不能直接在 MaterialApp 里使用
          Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new LoginPage()));
        },
      ),
    );
  }
}
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);
//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
// int _counter = 0;

// void _incrementCounter() {
//   setState(() {
//     _counter++;
//   });
// }

// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     appBar: AppBar(
//       title: Text(widget.title),
//     ),
//     body: Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Text(
//             'You have pushed the button this many times:',
//           ),
//           Text(
//             '$_counter',
//             style: Theme.of(context).textTheme.headline4,
//           ),
//         ],
//       ),
//     ),
//     floatingActionButton: FloatingActionButton(
//       onPressed: _incrementCounter,
//       tooltip: 'Increment',
//       child: Icon(Icons.add),
//     ),
//   );
// }
// }
