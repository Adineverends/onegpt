import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onewordai/screens/features/dating/pickupline.dart';
import 'package:onewordai/screens/features/social/caption%20genrator.dart';
import 'package:onewordai/screens/features/social/hastag%20genrator.dart';
import 'package:onewordai/screens/features/social/idea%20genrator.dart';

class instaoptions extends StatefulWidget {
  const instaoptions({Key? key}) : super(key: key);

  @override
  State<instaoptions> createState() => _instaoptionsState();
}

class _instaoptionsState extends State<instaoptions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: EdgeInsets.only(top: 20,left: 25,right: 25),
        child: Column(
         // mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                InkWell(
                  onTap: (){
                    setState(() {

                      Navigator.of(context).push(CupertinoPageRoute(builder: (_)=>captiongenartor()));



                    });
                  },
                  child: Container(
                      height: 150,
                      width: 150,
                      padding: EdgeInsets.only(top: 20),
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
                          Image.asset('assets/cap.png',color: Colors.black,),
                          SizedBox(height: 15,),
                          Text('caption\ngenrator ',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                        ],
                      )
                  ) ,
                ),
                SizedBox(width: 40,),
                InkWell(
                  onTap: (){
                    setState(() {

                      Navigator.of(context).push(CupertinoPageRoute(builder: (_)=>hashtag()));

                    });
                  },
                  child: Container(
                      height: 150,
                      width: 150,
                      padding: EdgeInsets.only(top: 20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Colors.deepPurple.shade800,Colors.deepPurple,Colors.deepPurple.shade800
                              ]
                          )
                      ),
                      child:Column(

                        children: [
                          Text('#',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),

                          SizedBox(height: 15,),
                          Text('hastags\ngenrator ',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                        ],
                      )
                  ) ,
                ),
              ],
            ),
            SizedBox(height: 25,),
            Row(
              children: [
                InkWell(
                  onTap: (){
                    setState(() {

                      Navigator.of(context).push(CupertinoPageRoute(builder: (_)=>idea()));



                    });
                  },
                  child: Container(
                      height: 150,
                      width: 150,
                      padding: EdgeInsets.only(top: 20),
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
                          Image.asset('assets/content.png',color: Colors.black,),
                          SizedBox(height: 15,),
                          Text('content Ideas\n    genrator ',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                        ],
                      )
                  ) ,
                ),
                SizedBox(width: 40,),

              ],
            ),
          ],
        ),
      )
    );
  }
}
