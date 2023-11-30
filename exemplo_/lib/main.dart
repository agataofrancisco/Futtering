import 'package:exemplo_/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'controllers/in.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  runApp( MyApp(token: prefs.getString('token'),));
}


class MyApp extends StatelessWidget {
  var token; // Assuming token can be null, adjust if needed

  MyApp({Key? key, @required this.token}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      home: //login()
      (JwtDecoder.isExpired(token) == false) ? inside(token: token) : login(),
    );
  }
}
