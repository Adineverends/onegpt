import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onewordai/screens/features/dating/bio.dart';
import 'package:onewordai/screens/features/dating/pickupline.dart';
import 'package:onewordai/screens/features/job/interview.dart';
import 'package:onewordai/screens/features/job/resume.dart';
import 'package:onewordai/screens/features/social/instaoptions.dart';
import 'package:onewordai/screens/features/social/linkedin.dart';
import 'package:onewordai/screens/features/social/twitter.dart';

class joboptions extends StatefulWidget {
  const joboptions({Key? key}) : super(key: key);

  @override
  State<joboptions> createState() => _joboptionsState();
}

class _joboptionsState extends State<joboptions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios,color: Colors.black,)),
        title: Text('Job ',style: TextStyle(color: Colors.black),),
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



                      Navigator.of(context).push(CupertinoPageRoute(builder: (_)=>Resume()));


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
                              Colors.orange,Colors.pink,Colors.orange
                            ]
                        ),
                      ),
                      child:Column(
                        children: [
                          Image.asset('assets/resum.png',color: Colors.black,height: 60,),
                          SizedBox(height: 15,),
                          Text('Resume ',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                        ],
                      )
                  ) ,
                ),
                SizedBox(width: 20,),
                SizedBox(height: 20,),
                InkWell(
                  onTap: (){
                    setState(() {

                      Navigator.of(context).push(CupertinoPageRoute(builder: (_)=>interview()));

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
                              Colors.orange,Colors.pink,Colors.orange
                            ]
                        ),
                      ),
                      child:Column(

                        children: [
                          Image.asset('assets/hire.png',height: 50,),

                          SizedBox(height: 15,),
                          Text('Interview \nQuestions ',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
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

                      Navigator.of(context).push(CupertinoPageRoute(builder: (_)=>tweet()));



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
                              Colors.orange,Colors.pink,Colors.orange
                            ]
                        ),
                      ),
                      child:Column(
                        children: [
                          Image.asset('assets/twitter.png',color: Colors.black,),
                          SizedBox(height: 15,),
                          Text('  Tweet\nGenrator ',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                        ],
                      )
                  ) ,
                ),
                SizedBox(width: 20,),
                InkWell(
                  onTap: (){
                    setState(() {

                      showModalBottomSheet(context: context,
                          //  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                          builder:(_){
                            return  Container(
                              padding: EdgeInsets.only(top: 20,left: 25,right: 25),
                              child: Column(
                                //  mainAxisSize: MainAxisSize.min,
                                children: [
                                  Row(
                                    children: [
                                      InkWell(
                                        onTap: (){
                                          setState(() {





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
                                                    Colors.orange,Colors.pink,Colors.orange
                                                  ]
                                              ),
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
                                                      Colors.orange,Colors.pink,Colors.orange
                                                    ]
                                                )
                                            ),
                                            child:Column(

                                              children: [
                                                Text('#',style: TextStyle(color: Colors.indigo,fontSize: 30,fontWeight: FontWeight.bold),),

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
                                                      Colors.indigo,Colors.green,Colors.indigo
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
                                      InkWell(
                                        onTap: (){
                                          setState(() {



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
                                                      Colors.orange,Colors.pink,Colors.orange
                                                    ]
                                                )
                                            ),
                                            child:Column(

                                              children: [
                                                Text('?',style: TextStyle(color: Colors.indigo,fontSize: 30,fontWeight: FontWeight.bold),),

                                                SizedBox(height: 15,),
                                                Text('Ask ',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                                              ],
                                            )
                                        ) ,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          }

                      );


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
                                Colors.orange,Colors.pink,Colors.orange
                              ]
                          )
                      ),
                      child:Column(

                        children: [
                          Image.asset('assets/y.png',height: 50,),

                          SizedBox(height: 15,),
                          Text('Youtube ',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
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
