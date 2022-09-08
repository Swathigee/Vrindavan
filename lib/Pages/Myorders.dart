import 'package:flutter/material.dart';

class MyOrdersScreen extends StatefulWidget {
  const MyOrdersScreen({Key? key}) : super(key: key);

  @override
  _MyOrdersScreenState createState() => _MyOrdersScreenState();
}

class _MyOrdersScreenState extends State<MyOrdersScreen> {
  late int currentIndex = 0;
  List<dynamic> _orderDetails = [
  {
  'status': 'Delivered',
  'id': '#30',
  'time': '02-09-2021 | 08:57',
  'price': '₹31.0',
    'image':'assets/img/packet1.png',
    'name': 'Vrindavan Natural Cow Milk',
    'size':'500ml',
    'subtotal':'₹31.0',
    'deliveryCharge':'Free',
    'total':'₹31.0',
},
  {
  'status': 'Delivered',
  'id': '#32',
  'time': '02-09-2021 | 08:57',
  'price': '₹31.0',
    'image':'assets/img/packet1.png',
    'name': 'Vrindavan Natural Cow Milk',
    'size':'500ml',
    'subtotal':'₹31.0',
    'deliveryCharge':'Free',
    'total':'₹31.0',
},
  {
  'status': 'Delivered',
  'id': '#32',
  'time': '02-09-2021 | 08:57',
  'price': '₹31.0',
    'image':'assets/img/packet1.png',
    'name': 'Vrindavan Natural Cow Milk',
    'size':'500ml',
    'subtotal':'₹31.0',
    'deliveryCharge':'Free',
    'total':'₹31.0',
},
    ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        shape: Border(bottom: BorderSide(width: 1, color: Color(0XFF1BBC9B))),
        backgroundColor: Color(0XFFECECEC),
        elevation: 4,
        shadowColor: Colors.black.withOpacity(0.5),
        leading: Padding(
          padding: EdgeInsets.only(left: 0),
          child: IconButton(
            onPressed: () {
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>MySubscriptionsScreen()));
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Color(0XFF1BBC9B),
            ),
          ),
        ),
        title: Text(
          'My Orders',
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: Color(0XFF464646)),
        ),
        centerTitle: true,
      ),
      backgroundColor: Color(0XFFECECEC),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            ListView.separated(
              shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index){
              return GestureDetector(
                onTap: (){
                  setState(() {
                    currentIndex = index;
                    // visible = true;
                  });
                },
                child: Container(
                  // height: 120,
                  width: width,
                  decoration: BoxDecoration(color: Color(0XFFF8F8F8)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Transform.translate(
                        offset: Offset(0, -20),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color(0XFF437F77),
                                borderRadius: BorderRadius.circular(25)),
                            width: 140,
                            height: 40,
                            child: Center(
                              child: Text(
                                _orderDetails[index]['status'],
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Color(0XFFFFFFFF),
                                    fontSize: 16),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                        EdgeInsets.only(left: 20, right: 20, bottom: 4, top: 5),
                        child: Container(
                          width:width,
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Order Id : ${_orderDetails[index]['id']}',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0XFF2B2B2B)),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    _orderDetails[index]['time'],
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0XFFB5B5B5)),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Text(
                                _orderDetails[index]['price'],
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Color(0XFF2B2B2B),
                                    fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Visibility(
                        visible: currentIndex == index,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 13, 20, 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 70,
                                width: 90,
                                decoration: BoxDecoration(
                                    color: Color(0XFFFFFFFF),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          offset: Offset(0.0, 3),
                                          spreadRadius: 1.0,
                                          blurRadius: 2.0)
                                    ],
                                    borderRadius: BorderRadius.circular(20)),
                                child: Image.asset(_orderDetails[index]['image'],),
                              ),
                              SizedBox(width: 5,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    _orderDetails[index]['name'],
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: Color(0XFF2B2B2B),
                                        fontSize: 12),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    _orderDetails[index]['size'],
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: Color(0XFF2B2B2B),
                                        fontSize: 12),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                ],
                              ),
                              Spacer(),
                              Text(
                                _orderDetails[index]['price'],
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Color(0XFF2B2B2B),
                                    fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Visibility(
                        visible: currentIndex == index,
                        child: Padding(
                          padding:  EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text('Subtotal',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Color(0XFF5A5A5A)),),
                                  Spacer(),
                                  Text(
                                    _orderDetails[index]['subtotal'],
                                    style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Color(0XFFA1A1A1)),),
                                ],
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Row(
                                children: [
                                  Text('Delivery Charge',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Color(0XFF5A5A5A)),),
                                  Spacer(),
                                  Text(
                                    _orderDetails[index]['deliveryCharge'],
                                    style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Color(0XFFA1A1A1)),),
                                ],
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Row(
                                children: [
                                  Text('Total',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Color(0XFF5A5A5A)),),
                                  Spacer(),
                                  Text(
                                    _orderDetails[index]['total'],
                                    style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Color(0XFF262626)),),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );

            },

                separatorBuilder: (context, index){
              return SizedBox(height: 60,);
                },
                itemCount: _orderDetails.length),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
