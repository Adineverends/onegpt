import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:share_plus/share_plus.dart';

class joke extends StatefulWidget {
  @override
  _jokeState createState() => _jokeState();
}

class _jokeState extends State<joke> {
  final TextEditingController _controller = TextEditingController();
  String _response = "";
  bool _isGenerating = false;

  void _generateResponse(String question) async {
    String apiKey = "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";
    String prompt = question;
    String model = "text-davinci-002";
    int maxTokens = 4000;

    String url = "https://api.openai.com/v1/completions";

    Map<String, String> headers = {
      "Content-Type": "application/json",
      "Authorization": "Bearer $apiKey",
    };

    Map<String, dynamic> data = {
      "prompt":"write a pickupline using" + prompt,
      "model": model,
      "max_tokens": maxTokens,
      "n": 1,
      "temperature": 0.7,
    };

    String json = jsonEncode(data);

    setState(() {
      _isGenerating = true;
      _response = "";
    });

    http.Response response = await http.post(Uri.parse(url), headers: headers, body: json);

    setState(() {
      _isGenerating = false;
    });

    if (response.statusCode == 200) {
      String responseBody = response.body;
      Map<String, dynamic> jsonResponse = jsonDecode(responseBody);
      String text = jsonResponse["choices"][0]["text"];
      setState(() {
        _response = text;
      });
    } else {
      throw Exception("Failed to generate completion");
    }
  }


  void _copyToClipboard(String text) {
    Clipboard.setData(ClipboardData(text: text));
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('Copied to clipboard'),
      duration: Duration(seconds: 2),
    ));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Joke Genrator',style: TextStyle(color: Colors.white),),
        elevation: 0,
         leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios,color: Colors.green,)),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 60,
                width: 350,
                padding: EdgeInsets.only(left: 15),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey.shade200
                ),
                child: TextField(
                  controller: _controller,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                      hintText: 'Enter a keyword (e.g apple,magician. etc.)',
                      border: InputBorder.none
                  ),
                ),
              ),

              SizedBox(height: 10,),
              if (_isGenerating)
                InkWell(
                  onTap: (){
                    setState(() {

                      String question = _controller.text;
                      _generateResponse(question);

                    });
                  },
                  child: Container(
                      height: 60,
                      width: 350,
                      // padding: EdgeInsets.only(left: 15),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                         color: Colors.green
                      ),
                      child:


                      Text('genrating......',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)
                  ) ,
                )
              else
                InkWell(
                  onTap: (){
                    setState(() {

                      String question = _controller.text;
                      _generateResponse(question);

                    });
                  },
                  child: Container(
                      height: 60,
                      width: 350,
                      // padding: EdgeInsets.only(left: 15),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.green
                      ),
                      child:


                      Text('Genrate',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)
                  ) ,
                ),
              SizedBox(height: 20),

              Container(
                width: 400,
                //alignment: Alignment.center,
                padding: EdgeInsets.only(left: 10,right: 15,bottom: 10,top: 15,),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.deepPurple,Colors.deepPurple,Colors.orange
                        ]
                    ),
                    borderRadius: BorderRadius.circular(8)
                ),
                child: Expanded(
                  child: Column(

                    children: [
                      _response == "" ? Text('Are you a cutey or are you just sweet on me?',style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),):
                      Text(
                        _response,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),
                      ),
                      SizedBox(height: 20,),
                      Row(
                        //crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                              onTap: () {
                                _copyToClipboard(_response);
                              },

                              child: Icon(Icons.copy_rounded,color: Colors.black,size: 30,)),
                          SizedBox(width: 10,),
                          InkWell(
                              onTap: (){
                                setState(() async {
                                  await Share.share('');
                                });
                              },
                              child: Image.asset('assets/s.png',height: 30,color: Colors.black,))


                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}