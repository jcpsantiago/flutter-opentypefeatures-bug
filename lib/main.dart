import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:markdown/markdown.dart' as md;
import 'package:flutter_markdown/flutter_markdown.dart' as md;

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
        fontFamily: 'Source Serif Pro',
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'filoses ftorii'),
    );
  }
}

final TextStyle fontStyle = TextStyle(
  fontSize: 32,
  fontFeatures: const <FontFeature>[FontFeature.enable('liga'), FontFeature.enable('kern')],
);

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
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title, style: fontStyle),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("filoses ftorii", style: fontStyle
            ),
            md.MarkdownBody(
            data: "filoses ftorii",
            styleSheet: md.MarkdownStyleSheet(
            p: fontStyle
            )),
          ],
        ),
      ),
    );
  }
}
