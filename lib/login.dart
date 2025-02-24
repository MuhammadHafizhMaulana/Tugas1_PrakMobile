import 'package:flutter/material.dart';
import 'package:tugas1/home.dart';
import 'package:tugas1/profile.dart';

class LoginPage extends StatefulWidget {
  @override _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State < LoginPage > {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  String username = "admin";
  String password = "1234";

  void login() {
    if (usernameController.text == username && passwordController.text == password) {
      Navigator.push(context,
        MaterialPageRoute(builder: (context) => Profile())
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Username atau password salah "),
        backgroundColor: Colors.red,
      ), );
    }
  }

  @override Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Login")),
      body: Padding(padding: const EdgeInsets.all(20.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [TextField(controller: usernameController,
              decoration: InputDecoration(labelText: "Username"),
            ),
            TextField(controller: passwordController,
              decoration: InputDecoration(labelText: "Password"),
              obscureText: true,
            ),
            SizedBox(height: 30),
            ElevatedButton(onPressed: login,
              child: Text("Login")
            ),
          ]
        ), ),
    );
  }

}