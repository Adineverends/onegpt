import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onewordai/screens/features/dating/advice.dart';
import 'package:onewordai/screens/features/dating/bio.dart';
import 'package:onewordai/screens/features/dating/flirtymessages.dart';
import 'package:onewordai/screens/features/dating/pickupline.dart';

class dateoptions extends StatefulWidget {
  const dateoptions({Key? key}) : super(key: key);

  @override
  State<dateoptions> createState() => _dateoptionsState();
}

class _dateoptionsState extends State<dateoptions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios,color: Colors.green,)),
        elevation: 0,
        title: Text('Dating',style: TextStyle(color: Colors.white),),
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

                      Navigator.of(context).push(CupertinoPageRoute(builder: (_)=>pickupline()));



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
                          Text('Pickup line\n genrator ',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                        ],
                      )
                  ) ,
                ),
                SizedBox(width: 20,),
                InkWell(
                  onTap: (){
                    setState(() {

                      Navigator.of(context).push(CupertinoPageRoute(builder: (_)=>biogenrator()));

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
                          Text('Bio genrator ',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
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

                      Navigator.of(context).push(CupertinoPageRoute(builder: (_)=>flirtyMessage()));



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
                          Text('   flirty message \n       genrator',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                        ],
                      )
                  ) ,
                ),
                SizedBox(width: 20,),
                InkWell(
                  onTap: (){
                    setState(() {

                      Navigator.of(context).push(CupertinoPageRoute(builder: (_)=>relationshipadvice()));

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
                          Text('Relationship\n   Advice ',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
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
