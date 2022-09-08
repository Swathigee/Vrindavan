import 'package:flutter/material.dart';

class BillingHistoryScreen extends StatefulWidget {
  const BillingHistoryScreen({Key? key}) : super(key: key);

  @override
  _BillingHistoryScreenState createState() => _BillingHistoryScreenState();
}

class _BillingHistoryScreenState extends State<BillingHistoryScreen> {
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
                //  Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutUsScreen()));
                 Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Color(0XFF1BBC9B),
              ),
            ),
          ),
          title: Text(
            'Billing History',
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
          child:
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/img/wallet.png',height: 150,width: 150,),
              SizedBox(
                height: 10,
              ),
              Text(
                'No Transactions Yet',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: Color(0XFF515151)),
              ),


            ],
          ),
        ));
  }
}
