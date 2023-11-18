import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onewordai/screens/features/dating/advice.dart';
import 'package:onewordai/screens/features/dating/bio.dart';
import 'package:onewordai/screens/features/dating/flirtymessages.dart';
import 'package:onewordai/screens/features/dating/pickupline.dart';
import 'package:onewordai/screens/features/fun/joke.dart';
import 'package:onewordai/screens/features/fun/prank.dart';
import 'package:onewordai/screens/features/fun/rap.dart';
import 'package:onewordai/screens/features/fun/song.dart';

class funoptions extends StatefulWidget {
  const funoptions({Key? key}) : super(key: key);

  @override
  State<funoptions> createState() => _funoptionsState();
}

class _funoptionsState extends State<funoptions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios,color: Colors.green,)),
        elevation: 0,
        title: Text('Fun',style: TextStyle(color: Colors.white),),
      ),
      body:   Padding(
        padding: const EdgeInsets.only(left: 19,top: 10),
        child: Column(
          children: [
            Row(
              children: [
                InkWell(
                  onTap: (){
                    setState(() {

                      Navigator.of(context).push(CupertinoPageRoute(builder: (_)=>song()));



                    });
                  },
                  child: Container(
                      height: 180,
                      width: 170,
                      padding: EdgeInsets.only(top: 50),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Colors.indigo,Colors.blueAccent,Colors.indigo
                              ]
                          )
                      ),
                      child:Column(
                        children: [
                          Icon(Icons.favorite,color: Colors.black,size: 40,),
                          SizedBox(height: 15,),
                          Text('Song Genrator ',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                        ],
                      )
                  ) ,
                ),
                SizedBox(width: 20,),
                InkWell(
                  onTap: (){
                    setState(() {

                      Navigator.of(context).push(CupertinoPageRoute(builder: (_)=>rap()));

                    });
                  },
                  child: Container(
                      height: 180,
                      width: 170,
                      padding: EdgeInsets.only(top: 50),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Colors.amber.shade800,Colors.amberAccent,Colors.amber.shade800
                              ]
                          )
                      ),
                      child:Column(

                        children: [
                          Image.asset('assets/aboutme.png',height: 40,color: Colors.black,),

                          SizedBox(height: 15,),
                          Text('Rap genrator ',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                        ],
                      )
                  ) ,
                ),
              ],
            ),
            SizedBox(height: 15,),
            Row(
              children: [
                InkWell(
                  onTap: (){
                    setState(() {

                      Navigator.of(context).push(CupertinoPageRoute(builder: (_)=>joke()));



                    });
                  },
                  child: Container(
                      height: 180,
                      width: 170,
                      padding: EdgeInsets.only(top: 50),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Colors.red.shade700,Colors.redAccent,Colors.red.shade700
                              ]
                          )
                      ),
                      child:Column(
                        children: [
                          Icon(Icons.chat_bubble_rounded,color: Colors.black,size: 30,),
                          SizedBox(height: 15,),
                          Text('  Joke Genrator ',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                        ],
                      )
                  ) ,
                ),
                SizedBox(width: 20,),
                InkWell(
                  onTap: (){
                    setState(() {

                    //  Navigator.of(context).push(CupertinoPageRoute(builder: (_)=>prank()));

                    });
                  },
                  child: Container(
                      height: 180,
                      width: 170,
                      padding: EdgeInsets.only(top: 50),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Colors.deepPurple.shade800,Colors.deepPurpleAccent.shade200,Colors.deepPurple.shade800
                              ]
                          )
                      ),
                      child:Column(

                        children: [
                          Icon(Icons.support_agent,size: 30,color: Colors.black,),

                          SizedBox(height: 15,),
                          Text('Prank Ideas \n  Genrator ',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                        ],
                      )
                  ) ,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
