import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:our_app/dataModel/Story.dart';
import 'package:our_app/widgets/CoustomCard.dart';
import 'package:our_app/widgets/FbFeed.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Story> _story = [];

  @override
  void initState() {
    onloadData();
    super.initState();
  }

  onloadData() async {
    final String response = await rootBundle.loadString('/StoryJson.json');
    final List<dynamic> data = json.decode(response);
    _story = data.map((json) => Story.fromJson(json)).toList();
    setState(() {});
    print("I am here");
    print(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ..._story
                    .map(
                      (s) => CoustomCard(
                        color: Colors.red,
                        margin: EdgeInsets.only(left: 12, top: 12, bottom: 12),
                        story: s,
                      ),
                    )
                    .toList()
              ],
            ),
          ),
          Fbfeed(),
          Fbfeed(),
          Fbfeed(),
          Fbfeed(),
          Fbfeed(),
          Fbfeed(),
          Fbfeed(),
          Fbfeed(),
          Fbfeed(),
          Fbfeed(),
          Fbfeed(),
          Fbfeed(),
          Fbfeed(),
          Fbfeed(),
          Fbfeed(),
          Fbfeed(),
          Fbfeed(),
          Fbfeed(),
          Fbfeed(),
          Fbfeed(),
          Fbfeed(),
          Fbfeed(),
        ],
      ),
    );
  }
}
