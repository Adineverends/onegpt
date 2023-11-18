import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onewordai/screens/features/ask/askoptions.dart';
import 'package:onewordai/screens/features/care/careoption.dart';
import 'package:onewordai/screens/features/dating/dateoptionspage.dart';
import 'package:onewordai/screens/features/fun/funoptions.dart';
import 'package:onewordai/screens/features/job/joboptions.dart';
import 'package:onewordai/screens/features/learn/learnoptions.dart';
import 'package:onewordai/screens/features/social/socialoptions.dart';
import 'package:onewordai/screens/features/startup/startupoptions.dart';

class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Image.asset('assets/logo.png',height: 130,)
      ),
backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(top: 5,left: 13,right: 13),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: (){
                      setState(() {

Navigator.of(context).push(CupertinoPageRoute(builder: (_)=>dateoptions()));

                      });
                    },
                    child: Container(
                        height: 180,
                        width: 170,
                         padding: EdgeInsets.only(top: 55),
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
                            Image.asset('assets/d.png',height: 40,color: Colors.black,),
                            SizedBox(height: 15,),
                            Text('Dating ',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                          ],
                        )
                    ) ,
                  ),
                  SizedBox(width: 20,),
                  InkWell(
                    onTap: (){
                      setState(() {

                        Navigator.of(context).push(CupertinoPageRoute(builder: (_)=>socialoptions()));

                      });
                    },
                    child: Container(
                        height: 180,
                        width: 170,
                        padding: EdgeInsets.only(top: 55),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Colors.green.shade800,Colors.green.shade300,Colors.green.shade800
                                ]
                            )
                        ),
                        child:Column(
                          children: [
                            Image.asset('assets/f.png',height: 40,color: Colors.black,),
                            SizedBox(height: 15,),
                            Text('Social  ',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                          ],
                        )
                    ) ,
                  ),
                ],
              ),
              SizedBox(height: 16,),
              Row(
                children: [
                  InkWell(
                    onTap: (){
                      setState(() {
                        Navigator.of(context).push(CupertinoPageRoute(builder: (_)=>funoptions()));



                      });
                    },
                    child: Container(
                        height: 180,
                        width: 170,
                        padding: EdgeInsets.only(top: 55),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Colors.pink.shade700,Colors.pinkAccent,Colors.pink.shade700
                                ]
                            )
                        ),
                        child:Column(
                          children: [
                            Image.asset('assets/f.png',height: 40,)
                         //   Icon(Icons.face_unlock_rounded,color: Colors.black,size: 40,)
                            ,SizedBox(height: 17,),
                            Text('Fun ',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                          ],
                        )
                    ) ,
                  ),
                  SizedBox(width: 20,),
                  InkWell(
                    onTap: (){
                      setState(() {

                        Navigator.of(context).push(CupertinoPageRoute(builder: (_)=>startupoptions()));

                      });
                    },
                    child: Container(
                        height: 180,
                        width: 170,
                        padding: EdgeInsets.only(top: 55),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            //color: Colors.redAccent

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
                            Image.asset('assets/st.png',height: 50,color: Colors.black,),
                            SizedBox(height: 15,),
                            Text('Startup ',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                          ],
                        )
                    ) ,
                  ),
                ],
              ),
              SizedBox(height: 16,),
              Row(
                children: [
                  InkWell(
                    onTap: (){
                      setState(() {

                        Navigator.of(context).push(CupertinoPageRoute(builder: (_)=>joboptions()));



                      });
                    },
                    child: Container(
                        height: 180,
                        width: 170,
                        padding: EdgeInsets.only(top: 55),
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
                            Image.asset('assets/j.png',height: 40,color: Colors.black,),
                            SizedBox(height: 17,),
                            Text('Job ',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                          ],
                        )
                    ) ,
                  ),
                  SizedBox(width: 20,),
                  InkWell(
                    onTap: (){
                      setState(() {

                        Navigator.of(context).push(CupertinoPageRoute(builder: (_)=>learnoptions()));

                      });
                    },
                    child: Container(
                        height: 180,
                        width: 170,
                        padding: EdgeInsets.only(top: 55),
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
                            Image.asset('assets/book.png',height: 40,color: Colors.black,),
                            SizedBox(height: 15,),
                            Text('Learn',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                          ],
                        )
                    ) ,
                  ),
                ],
              ),
              SizedBox(height: 16,),
              Row(
                children: [
                  InkWell(
                    onTap: (){
                      setState(() {

                        Navigator.of(context).push(CupertinoPageRoute(builder: (_)=>careoptions()));



                      });
                    },
                    child: Container(
                        height: 180,
                        width: 170,
                        padding: EdgeInsets.only(top: 55),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Colors.teal.shade800,Colors.tealAccent,Colors.teal.shade800
                                ]
                            )
                        ),
                        child:Column(
                          children: [
                            Image.asset('assets/care.png',height: 40,color: Colors.black,),
                            SizedBox(height: 17,),
                            Text('care ',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
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
      ),
    );
  }
}
