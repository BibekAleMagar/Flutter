import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:our_app/dataModel/Story.dart';
import 'package:our_app/dataModel/Post.dart';
import 'package:our_app/widgets/CoustomCard.dart';
import 'package:our_app/widgets/FbFeed.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
  List<Story> _stories = [];
  List<Post> _posts = [];

  @override
  void initState() {
    super.initState();
    onloadData();
  }

  Future<void> onloadData() async {
    final String storyResponse = await rootBundle.loadString('assets/StoryJson.json');
    final List<dynamic> storyData = json.decode(storyResponse);
    _stories = storyData.map((json) => Story.fromJson(json)).toList();

    final String postResponse = await rootBundle.loadString('assets/PostJson.json');
    final List<dynamic> postData = json.decode(postResponse);
    _posts = postData.map((json) => Post.fromJson(json)).toList();

    setState(() {});
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
          // Story Cards
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: _stories.map((s) => CoustomCard(
                color: Colors.red,
                margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                story: s,
              )).toList(),
            ),
          ),

          // Facebook Posts Feed
          ..._posts.map((post) => Fbfeed(post: post)),
        ],
      ),
    );
  }
}
