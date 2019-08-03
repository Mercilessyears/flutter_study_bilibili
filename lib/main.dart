import 'package:bilibili_app/routes/routes.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      onGenerateRoute: onGenerateRoute,
      theme: ThemeData(
        primaryColor: Color.fromRGBO(251, 114, 153, 1),
      ),
    );
  }
}