import 'package:flutter/material.dart';

class InputWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _InputWidgetState();
}

class _InputWidgetState extends State<StatefulWidget> {
  final controller = new TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    controller.text = 'haha';
    controller.addListener(() {
      print('controller: ${controller.text}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        icon: Icon(Icons.people),
        labelText: "username",
        hintText: "请输入用户名",
        // filled: true,
        // fillColor: Colors.lightGreen,
      ),
      onChanged: (value) {
        print("onChanged:$value");
      },
      onSubmitted: (value) {
        print("onSubmitted:$value");
      },
    );
  }
}
