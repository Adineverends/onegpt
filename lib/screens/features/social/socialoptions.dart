import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onewordai/screens/features/dating/bio.dart';
import 'package:onewordai/screens/features/dating/pickupline.dart';
import 'package:onewordai/screens/features/social/instaoptions.dart';
import 'package:onewordai/screens/features/social/linkedin.dart';
import 'package:onewordai/screens/features/social/twitter.dart';

class socialoptions extends StatefulWidget {
  const socialoptions({Key? key}) : super(key: key);

  @override
  State<socialoptions> createState() => _socialoptionsState();
}

class _socialoptionsState extends State<socialoptions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios,color: Colors.green,)),
        title: Text('Social',style: TextStyle(color: Colors.white),),
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



                    showModalBottomSheet(context: context,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                        builder:(_){
                      return instaoptions();
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
                                Colors.indigo,Colors.blueAccent,Colors.indigo
                              ]
                          )
                      ),
                      child:Column(
                        children: [
                          Image.asset('assets/i.png',color: Colors.black,),
                          SizedBox(height: 15,),
                          Text('Instagram ',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                        ],
                      )
                  ) ,
                ),
                SizedBox(width: 20,),
                InkWell(
                  onTap: (){
                    setState(() {

                      Navigator.of(context).push(CupertinoPageRoute(builder: (_)=>linkedin()));

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
                          Image.asset('assets/l.png',height: 50,),

                          SizedBox(height: 15,),
                          Text('LinkedIn Post \n    genrator ',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
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
                                Colors.red.shade700,Colors.redAccent,Colors.red.shade700
                              ]
                          )
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
                /*
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
                ),*/
              ],
            ),
          ],
        ),
      ),
    );
  }
}
