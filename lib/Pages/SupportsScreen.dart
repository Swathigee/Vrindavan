import 'package:flutter/material.dart';
import 'package:vridavan/Pages/ChatScreen.dart';

import 'DashboardScreen.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({Key? key}) : super(key: key);

  @override
  _SupportScreenState createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        shape: Border(bottom: BorderSide(color: Color(0XFF1BBC9B),width: 1)),
        shadowColor: Colors.black.withOpacity(0.5),
        backgroundColor: Color(0XFFECECEC),
        elevation: 4,
        automaticallyImplyLeading: false,
        title: Text(
          'Support',
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: Color(0XFF464646)),
        ),

        centerTitle: true,
      ),

      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color(0XFFECECEC),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:  EdgeInsets.only(top: 10,bottom: 10),
                  child: Text('Get help with other issues',style: TextStyle(fontSize: 20,color: Color(0XFF969696)),),
                ),
                Padding(
                  padding:  EdgeInsets.only(bottom: 10),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  ChatScreen()));
                    },
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                          color: Color(0XFFE7E7E7),
                          border: Border.all(color: Color(0XFFDCDCDC),width: 2)
                      ),

                      child:Padding(
                        padding:  EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text('Issue with previous order',style: TextStyle(fontSize: 16,color: Color(0XFF5B5B5B))),
                            Spacer(),
                            Icon(Icons.keyboard_arrow_right_outlined)
                          ],
                        ),
                      ) ,
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(bottom: 10),
                  child: GestureDetector(
                    onTap: (){},
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                          color: Color(0XFFE7E7E7),
                          border: Border.all(color: Color(0XFFDCDCDC),width: 2)
                      ),

                      child:Padding(
                        padding:  EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text('Recharge or Tech related issue',style: TextStyle(fontSize: 16,color: Color(0XFF5B5B5B))),
                            Spacer(),
                            Icon(Icons.keyboard_arrow_right_outlined)
                          ],
                        ),
                      ) ,
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(bottom: 10),
                  child: GestureDetector(
                    onTap: (){},
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                          color: Color(0XFFE7E7E7),
                          border: Border.all(color: Color(0XFFDCDCDC),width: 2)
                      ),

                      child:Padding(
                        padding:  EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text('Start Services to your building',style: TextStyle(fontSize: 16,color: Color(0XFF5B5B5B))),
                            Spacer(),
                            Icon(Icons.keyboard_arrow_right_outlined)
                          ],
                        ),
                      ) ,
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(bottom: 10),
                  child: GestureDetector(
                    onTap: (){},
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                          color: Color(0XFFE7E7E7),
                          border: Border.all(color: Color(0XFFDCDCDC),width: 2)
                      ),

                      child:Padding(
                        padding:  EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text('Getting Started',style: TextStyle(fontSize: 16,color: Color(0XFF5B5B5B))),
                            Spacer(),
                            Icon(Icons.keyboard_arrow_right_outlined)
                          ],
                        ),
                      ) ,
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(top: 10,bottom: 30),
                  child: Text('FAQs',style: TextStyle(fontSize: 22,color: Color(0XFF464646),fontWeight: FontWeight.w600),),
                ),
                Padding(
                  padding:  EdgeInsets.only(bottom: 10),
                  child: GestureDetector(
                    onTap: (){},
                    child: Container(
                      // height: 60,
                      decoration: BoxDecoration(
                          color: Color(0XFFE7E7E7),
                          border: Border.all(color: Color(0XFFDCDCDC),width: 2)
                      ),

                      child:Padding(
                        padding:  EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              constraints: BoxConstraints(maxWidth: width-90),
                                child: Text('Till what time can you place the order everyday?',style: TextStyle(fontSize: 16,color: Color(0XFF5B5B5B)))),
                            Spacer(),
                            Icon(Icons.keyboard_arrow_right_outlined)
                          ],
                        ),
                      ) ,
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(bottom: 10),
                  child: GestureDetector(
                    onTap: (){},
                    child: Container(
                      // height: 45,
                      decoration: BoxDecoration(
                          color: Color(0XFFE7E7E7),
                          border: Border.all(color: Color(0XFFDCDCDC),width: 2)
                      ),

                      child:Padding(
                        padding:  EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                                constraints: BoxConstraints(maxWidth: width-90),
                                child: Text('When will the order be delivered? ',style: TextStyle(fontSize: 16,color: Color(0XFF5B5B5B)))),
                            Spacer(),
                            Icon(Icons.keyboard_arrow_right_outlined)
                          ],
                        ),
                      ) ,
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(bottom: 10),
                  child: GestureDetector(
                    onTap: (){},
                    child: Container(
                      // height: 45,
                      decoration: BoxDecoration(
                          color: Color(0XFFE7E7E7),
                          border: Border.all(color: Color(0XFFDCDCDC),width: 2)
                      ),

                      child:Padding(
                        padding:  EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                                constraints: BoxConstraints(maxWidth: width-90),
                                child: Text('How I can cancel my order? ',style: TextStyle(fontSize: 16,color: Color(0XFF5B5B5B)))),
                            Spacer(),
                            Icon(Icons.keyboard_arrow_right_outlined)
                          ],
                        ),
                      ) ,
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(bottom: 10),
                  child: GestureDetector(
                    onTap: (){},
                    child: Container(
                      // height: 45,
                      decoration: BoxDecoration(
                          color: Color(0XFFE7E7E7),
                          border: Border.all(color: Color(0XFFDCDCDC),width: 2)
                      ),

                      child:Padding(
                        padding:  EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                                constraints: BoxConstraints(maxWidth: width-90),
                                child: Text('How I can edit my subscription? ',style: TextStyle(fontSize: 16,color: Color(0XFF5B5B5B)))),
                            Spacer(),
                            Icon(Icons.keyboard_arrow_right_outlined)
                          ],
                        ),
                      ) ,
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(bottom: 10),
                  child: GestureDetector(
                    onTap: (){},
                    child: Container(
                      // height: 45,
                      decoration: BoxDecoration(
                          color: Color(0XFFE7E7E7),
                          border: Border.all(color: Color(0XFFDCDCDC),width: 2)
                      ),

                      child:Padding(
                        padding:  EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                                constraints: BoxConstraints(maxWidth: width-90),
                                child: Text('Where I can see my scheduled order?',style: TextStyle(fontSize: 16,color: Color(0XFF5B5B5B)))),
                            Spacer(),
                            Icon(Icons.keyboard_arrow_right_outlined)
                          ],
                        ),
                      ) ,
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(bottom: 10),
                  child: GestureDetector(
                    onTap: (){},
                    child: Container(
                      // height: 45,
                      decoration: BoxDecoration(
                          color: Color(0XFFE7E7E7),
                          border: Border.all(color: Color(0XFFDCDCDC),width: 2)
                      ),

                      child:Padding(
                        padding:  EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                                constraints: BoxConstraints(maxWidth: width-90),
                                child: Text('Where should I call to get my refund?',style: TextStyle(fontSize: 16,color: Color(0XFF5B5B5B)))),
                            Spacer(),
                            Icon(Icons.keyboard_arrow_right_outlined)
                          ],
                        ),
                      ) ,
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(bottom: 10),
                  child: GestureDetector(
                    onTap: (){},
                    child: Container(
                      // height: 45,
                      decoration: BoxDecoration(
                          color: Color(0XFFE7E7E7),
                          border: Border.all(color: Color(0XFFDCDCDC),width: 2)
                      ),

                      child:Padding(
                        padding:  EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                                constraints: BoxConstraints(maxWidth: width-90),
                                child: Text('I recharged but my money is not added...',style: TextStyle(fontSize: 16,color: Color(0XFF5B5B5B)))),
                            Spacer(),
                            Icon(Icons.keyboard_arrow_right_outlined)
                          ],
                        ),
                      ) ,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}