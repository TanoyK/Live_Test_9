
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration:  BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomRight,
        colors: [Colors.deepPurple.shade900, Colors.purple.shade800])),
    child: Scaffold(
    backgroundColor: Colors.transparent,
    appBar: AppBar(
    title:  const Text("Flutter Weather",),
    centerTitle: false,
    elevation: 5,
    })),
    );
}
}

