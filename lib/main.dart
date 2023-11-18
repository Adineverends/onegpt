import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:onewordai/screens/home.dart';
import 'package:onewordai/screens/navbar.dart';

import 'dart:convert';

import 'package:share_plus/share_plus.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor:Colors.black, // set color for the status bar
      statusBarBrightness: Brightness.light,
      systemNavigationBarColor: Colors.black// set brightness for the status bar text
    ));

    return MaterialApp(
      title: 'OpenAI GPT-3 Demo',
      debugShowCheckedModeBanner: false,
      home: home()
    );
  }
}






class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final _controller = TextEditingController();
  bool _isGenerating = false;
  String _response = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat with AI"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              reverse: true,
              children: [
                if (_response.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8.0,
                      horizontal: 16.0,
                    ),
                    child: Text(
                      _response,
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
              ],
            ),
          ),
          Divider(height: 1.0),
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
            ),
            child: _buildTextComposer(),
          ),
          if (_isGenerating)
            Container(
              color: Colors.white,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildTextComposer() {
    return IconTheme(
      data: IconThemeData(color: Theme.of(context).accentColor),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            Flexible(
              child: TextField(
                controller: _controller,
                onSubmitted: _handleSubmit,
                decoration:
                InputDecoration.collapsed(hintText: "Send a message"),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              child: IconButton(
                icon: Icon(Icons.send),
                onPressed: () => _handleSubmit(_controller.text),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _handleSubmit(String question) async {
    if (question.isEmpty) return;
    setState(() {
      _isGenerating = true;
      _response = "";
    });

    String apiKey = "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";
    String prompt = question;
    String model = "davinci-codex-002";
    int maxTokens = 50;
    int n = 1;
    double temperature = 0.7;

    try {
      final response = await http.post(
        Uri.parse("https://api.openai.com/v1/completions"),
        headers: {
          "Authorization": "Bearer $apiKey",
        },
        body: {
          "prompt": prompt,
          "model": model,
          "max_tokens": maxTokens.toString(),
          "n": n.toString(),
          "temperature": temperature.toString(),
        },
      );
      final data = json.decode(response.body);
      setState(() {
        _isGenerating = false;
        _response = data["choices"][0]["text"];
      });
    } catch (e) {
      setState(() {
        _isGenerating = false;
        _response = "Error: ${e.toString()}";
      });
    }
  }
}


