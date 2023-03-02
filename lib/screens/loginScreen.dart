import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:motion_toast/motion_toast.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sparrow/api/api_service.dart';
import 'package:sparrow/helpers/CherryToast.dart';
import 'package:sparrow/helpers/shared_pref.dart';
import 'package:sparrow/screens/home_screen/home_screen.dart';
import 'package:sparrow/utils/config.dart';

Color colors = Colors.black;

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  bool? isLogin;

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  initState() {
    super.initState();
    _autoLogin();
  }

  _autoLogin() async {
    var token = await sharedPref().getAuthToken();
    print("token $token");
    if (token != null) {
      Navigator.pushNamed(context, '/');
    } else {
      return;
    }
  }

  _login(String phone, String password) async {
    await APIService().login(phone, password);
    sharedPref().getAuthToken().then((value) {
      print(value);
      if (value != null) {
        AwesomeNotifications().createNotification(
            content: NotificationContent(
                id: 1,
                channelKey: 'basic_channel',
                title: "Login Success ",
                body: 'You are in the system !!'));
        Navigator.pushNamed(context, '/');
      } else {
        AwesomeNotifications().createNotification(
            content: NotificationContent(
                id: 1,
                channelKey: 'basic_channel',
                title: "Login Success ",
                body: 'You are in the system !!'));
        MotionToast.error(
                description: Text("Your credentials doesn't match 😒"))
            .show(context);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 244, 242, 242),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // image
              Image.asset(
                'assets/images/logo2.png',
                width: 150,
              ),
              SizedBox(height: 16),

              Text(
                "Login to your account",
                style: TextStyle(
                    color: const Color.fromARGB(239, 126, 159, 171),
                    fontSize: 32,
                    fontWeight: FontWeight.bold),
              ),

              SizedBox(
                height: 22,
              ),
              Container(
                height: 50,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 225, 225, 216),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 15.0,
                          spreadRadius: 5.0,
                          offset: Offset(5, 5))
                    ],
                    borderRadius: BorderRadius.circular(12)),
                margin: EdgeInsets.only(left: 40, right: 40),
                child: TextField(
                  key: ValueKey("phone"),
                  controller: _emailController,
                  style: TextStyle(fontSize: 16, color: Colors.black),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    hintText: "Phone number",
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                height: 50,
                margin: EdgeInsets.only(left: 40, right: 40),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 225, 225, 216),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 15.0,
                        spreadRadius: 4.0,
                        offset: Offset(4, 4))
                  ],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  key: ValueKey("password"),
                  controller: _passwordController,
                  obscureText: true,
                  style: TextStyle(
                      fontSize: 16, color: Color.fromARGB(255, 77, 72, 72)),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    hintText: "Password",
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 230),
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                      color: Color.fromARGB(255, 117, 115, 115),
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 45,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    gradient: const LinearGradient(colors: [
                      Color.fromARGB(255, 19, 33, 45),
                      Color.fromARGB(255, 114, 231, 117)
                    ])),
                margin: EdgeInsets.only(left: 40, right: 40),
                child: SizedBox(
                  height: 170,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(239, 126, 159, 171),
                    ),
                    key: ValueKey("loginBtn"),
                    onPressed: () {
                      _login(_emailController.text, _passwordController.text);
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "It's your first time here?",
                    style: TextStyle(color: Color.fromARGB(255, 206, 106, 106)),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle:
                          const TextStyle(fontSize: 15, color: Colors.orange),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/register');
                    },
                    child: const Text(
                      'Sign up',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
