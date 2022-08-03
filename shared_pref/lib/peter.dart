import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shared_pref/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Peter extends StatefulWidget {
  const Peter({Key? key}) : super(key: key);

  @override
  State<Peter> createState() => _PeterState();
}

class _PeterState extends State<Peter> {
  bool loginchck = true;
  logout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    loginchck = false;
    prefs.setBool('login', loginchck);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MyStatefulWidget()));
            logout();
          },
          child: Text("Logout")),
    );
  }
}
