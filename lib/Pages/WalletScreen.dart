import 'package:flutter/material.dart';

import 'DashboardScreen.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  _WalletScreenState createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery
        .of(context)
        .size
        .height;
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFFECECEC),
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          'My Wallet',
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: Color(0XFF464646)),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Color(0XFFECECEC),
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: height / 3.2,
                width: width,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0XFF019885),
                          Color(0XFF89C48A),
                        ])),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Available Balance',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 22,
                          color: Colors.white),
                    ),
                    Text(
                      '₹108.00',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 70,
                          color: Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/img/danger.png',
                            scale: 10,
                          ),
                          Text(
                            'Your wallet balance is low. Add money \n to wallet for uninterrupted service',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Color(0XFF272727),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Add money to your wallet', style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                        color: Colors.black),),
                    SizedBox(height: 20,),
                    Container(
                      height: 60,
                      width: 150,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black
                                    .withOpacity(0.1),
                                offset: Offset(0.0, 1),
                                spreadRadius: 2.0,
                                blurRadius: 2.0)
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100)
                      ),
                      child: Center(child: Padding(
                        padding: const EdgeInsets.only(right: 40),
                        child: Text('1500', style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 30,
                            color: Color(0XFF303030)),),
                      )),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 90,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(color: Color(0XFFC0C0C0))
                          ),
                          child: Center(
                            child: Text('+500', style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                color: Color(0XFF707070)),),
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 40,
                          width: 90,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(color: Color(0XFFC0C0C0))
                          ),
                          child: Center(
                            child: Text('+1000', style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                color: Color(0XFF707070)),),
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 40,
                          width: 90,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(color: Color(0XFFC0C0C0))
                          ),
                          child: Center(
                            child: Text('+2000', style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                color: Color(0XFF707070)),),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                      ),
                      // ignore: deprecated_member_use
                      child: MaterialButton(
                        onPressed: () {},
                        padding: EdgeInsets.symmetric(vertical: 15),
                        color: Color(0XFF262626),
                        shape: StadiumBorder(),
                        child: Center(child: Text('ADD MONEY', style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            color: Colors.white),)),
                      ),
                    ),
                    SizedBox(height: 30,),
                    Center(
                      child:
                      Container(
                        width: 230,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(
                                100)),
                            border: Border.all(color: Color(0XFF1BBC9B),
                                width: 2)
                        ),
                        // ignore: deprecated_member_use
                        child: MaterialButton(
                          onPressed: () {},
                          padding: EdgeInsets.symmetric(vertical: 15,),
                          shape: StadiumBorder(),
                          child: Center(child: Text('Transactions History',
                            style: TextStyle(fontWeight: FontWeight.w800,
                                fontSize: 18,
                                color: Color(0XFF1BBC9B)),)),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),

                  ],
                ),
              ),
              Divider(color: Color(0XFFE3E3E3), thickness: 4,),
              Padding(padding: EdgeInsets.all(20),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('YOU HAVE COUPON CODE?', style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 19,
                        color: Color(0XFF5A5A5A)),),
                    SizedBox(height: 10,),
                    Container(
                      height: 50,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(
                                      100)),
                                  border: Border.all(color: Color(0XFF1BBC9B),
                                      width: 2)                            ),
                              child: TextFormField(
                                decoration: InputDecoration(
                                    border: InputBorder.none
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Expanded(
                            flex: 2,
                            child:
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(
                                      100)),
                                  border: Border.all(color: Color(0XFF1BBC9B),
                                      width: 2)
                              ),
                              // ignore: deprecated_member_use
                              child: MaterialButton(
                                onPressed: () {},
                                shape: StadiumBorder(),
                                child: Center(child: Text('Apply',
                                  style: TextStyle(fontWeight: FontWeight.w800,
                                      fontSize: 18,
                                      color: Color(0XFF1BBC9B)),)),
                              ),
                            ),

                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(height: 50,),

            ],
          ),
        ),
      ),
    );
  }
}
