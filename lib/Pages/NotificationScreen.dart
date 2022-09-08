import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          shape: Border(
              bottom: BorderSide(width: 1, color: Color(0XFF1BBC9B))),
          backgroundColor: Color(0XFFECECEC),
          elevation: 4,
          shadowColor: Colors.black.withOpacity(0.5),
          leading: Padding(
            padding:  EdgeInsets.only(left: 0),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>MyCartScreen()));
              },
              icon: Icon(
                Icons.arrow_back,
                color: Color(0XFF1BBC9B),
              ),
            ),
          ),
          title: Text(
            'Notification',
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: Color(0XFF464646)),
          ),
          centerTitle: true,
        ),
        body:Container(
          color: Color(0XFFECECEC),
          // height: double.infinity,
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/img/notification 1.png',height: 150,width: 150,),
              SizedBox(
                height: 10,
              ),
              Text(
                'Nothing in here right now!',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: Color(0XFF515151)),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'We’ll let you know when we have \n something for you here.',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Color(0XFF787878)),
                textAlign: TextAlign.center,
              ),

            ],
          ),
        ));
  }
}