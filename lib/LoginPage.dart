import 'dart:async';

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  bool loading = false;

  void login() {
    setState(() => loading = true);
    new Timer(new Duration(seconds: 5), () {
      setState(() => loading = false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('登录'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.person_outline),
                  labelText: '账号',
                  hintText: "请输入用户名或邮箱",
                ),
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  icon: Icon(Icons.lock_outline),
                  labelText: '密码',
                  hintText: "请输入密码",
                ),
              ),
              SizedBox(height: 16),
              MaterialButton(
                minWidth: double.infinity,
                height: 44,
                color: Colors.green,
                textColor: Colors.white,
                disabledColor: Color(0xFF7cb17e),
                disabledTextColor: Colors.white,
                child: Text('登录', style: TextStyle(fontSize: 20)),
                onPressed: loading ? null : login,
              ),

              //下面两种方式没有禁用的样式，只是不可点击
              // IgnorePointer(
              //   ignoring: true,
              //   child: MaterialButton(
              //     minWidth: double.infinity,
              //     height: 44,
              //     color: Colors.green,
              //     textColor: Colors.white,
              //     child: Text('登录', style: TextStyle(fontSize: 20)),
              //     onPressed: () {},
              //   ),
              // ),
              // AbsorbPointer(
              //   absorbing: true,
              //   child: MaterialButton(
              //     minWidth: double.infinity,
              //     height: 44,
              //     color: Colors.green,
              //     textColor: Colors.white,
              //     child: Text('登录', style: TextStyle(fontSize: 20)),
              //     onPressed: () {},
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
