
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List _items = [];

  Future<void> readJson() async {
    final String response = await rootBundle.loadString('json/food_recipes.json');
    final data = await json.decode(response);
    setState(() {
      _items = data["recipes"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Food Recipes',
        ),
      ),
      body:
      _items.isNotEmpty
                ? Expanded(
              child: ListView.builder(
                itemCount: _items.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.all(12),
                    child: ListTile(
                      leading: Text(_items[index]["title"]),
                      title: Text(_items[index]["description"]),
                      subtitle: Text(_items[index]["ingredients"]),
                    ),
                  );
                },
              ),
            )
                : Container()
    );
  }
}
