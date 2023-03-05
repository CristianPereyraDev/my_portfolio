import 'package:flutter/material.dart';
import 'package:my_portfolio/router/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      title: 'Cr',
      theme: ThemeData(
        //primarySwatch: Colors.blue,
        brightness: Brightness.dark,
        primaryColorDark: const Color(0xffC0392B),
        primaryColor: const Color(0xffC0392B),
        highlightColor: const Color(0xffC0392B),
        canvasColor: Colors.white,
        fontFamily: "Poppins",
        splashColor: Colors.transparent,
        scaffoldBackgroundColor: Colors.black,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.red,
          backgroundColor: Colors.grey[800],
        ).copyWith(
          secondary: const Color(0xffC0392B),
          brightness: Brightness.dark,
        ),
      ),
    );
  }
}
