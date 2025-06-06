import 'package:flutter/material.dart';
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
                CoustomCard(
                  color: Colors.red,
                  margin: EdgeInsets.only(left: 12, top: 12, bottom: 12),
                ),
                CoustomCard(
                  color: Colors.green,
                  margin: EdgeInsets.only(left: 12, top: 12, bottom: 12),
                ),
                CoustomCard(
                  color: Colors.blue,
                  margin:
                      EdgeInsets.only(left: 12, top: 12, bottom: 12, right: 12),
                ),
                CoustomCard(
                  color: Colors.blue,
                  margin:
                      EdgeInsets.only(left: 12, top: 12, bottom: 12, right: 12),
                ),
                CoustomCard(
                  color: Colors.blue,
                  margin:
                      EdgeInsets.only(left: 12, top: 12, bottom: 12, right: 12),
                ),
                CoustomCard(
                  color: Colors.blue,
                  margin:
                      EdgeInsets.only(left: 12, top: 12, bottom: 12, right: 12),
                ),
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
