import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onewordai/screens/features/dating/bio.dart';
import 'package:onewordai/screens/features/dating/pickupline.dart';

class startupoptions extends StatefulWidget {
  const startupoptions({Key? key}) : super(key: key);

  @override
  State<startupoptions> createState() => _startupoptionsState();
}

class _startupoptionsState extends State<startupoptions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Startup'),
      ),
      body:   Padding(
        padding: const EdgeInsets.all(10.0),
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
                          Icon(Icons.favorite,color: Colors.red,size: 50,),
                          SizedBox(height: 15,),
                          Text('Statup Idea\n genrator ',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
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
                          Image.asset('assets/aboutme.png',height: 50,),

                          SizedBox(height: 15,),
                          Text('Pitch genrator ',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                        ],
                      )
                  ) ,
                ),
              ],
            ),
            SizedBox(height: 20,),
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
                                Colors.deepPurple.shade800,Colors.deepPurpleAccent.shade200,Colors.deepPurple.shade800
                              ]
                          )
                      ),
                      child:Column(
                        children: [
                          Icon(Icons.favorite,color: Colors.red,size: 50,),
                          SizedBox(height: 15,),
                          Text('Learn ',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                        ],
                      )
                  ) ,
                ),
                SizedBox(width: 20,),
               
              ],
            ),
          ],
        ),
      ),
    );
  }
}
