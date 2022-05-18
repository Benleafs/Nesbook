import "package:flutter/material.dart";
import 'package:traex/pages/home_page.dart';

class Traex extends StatelessWidget {
  const Traex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      title: "Traex",
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
    );
  }
}
