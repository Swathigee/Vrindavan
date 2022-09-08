import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
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
        leading: Padding(
          padding: const EdgeInsets.only(left: 0),
          child: IconButton
            (
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Color(0XFF1BBC9B),
            ),
          ),
        ),
        title: Text(
          'Inbox',
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: Color(0XFF464646)),
        ),

        centerTitle: true,
      ),

      body: Container(
        width: width,
        color: Color(0XFFECECEC),
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.end,

          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row
                (
                children: [
                  Container(
                    child: Image.asset('assets/img/unnamed 1.png') ,
                  ),
                  SizedBox(width: 10,),
                  Text('Support',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Color(0XFF313131)),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              constraints: BoxConstraints(maxWidth: 260),
              decoration: BoxDecoration(
                  color: Color(0XFFADDCD2),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black
                            .withOpacity(0.1),
                        offset: Offset(0.0, 2),
                        spreadRadius: 2.0,
                        blurRadius: 2.0)
                  ],
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(0),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  )
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Hello there! Need help? Reach out to us right here, and we’ll get back to you as soon as we can!',
                  style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500,color: Color(0XFF272727)),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 50,
              width: width,
              color: Color(0XFFFFFFFF),
              child: TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Type a message',
                  hintStyle: TextStyle(fontSize: 17,fontWeight: FontWeight.w500,color: Color(0XFF606060)),
                  // contentPadding: EdgeInsets.all(20),
                  prefixIcon: ImageIcon(
                    AssetImage('assets/img/paperclip.png'),color: Color(0XFF159E86),
                  ),
                  suffixIcon: ImageIcon(
                    AssetImage('assets/img/send.png'),color: Color(0XFF159E86),
                  ),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}