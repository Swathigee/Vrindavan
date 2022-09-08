import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BillingHistory extends StatefulWidget {
  const BillingHistory({Key? key}) : super(key: key);

  @override
  _BillingHistoryState createState() => _BillingHistoryState();
}

class _BillingHistoryState extends State<BillingHistory> {
  bool history = false;
  List<dynamic> _list = [
    {
      'title': 'Vrindavan Natural Cow Milk',
      'id': '#9876',
      'date': 'May 18, 2:08 PM',
      'price': '₹31.0',
    },
    {
      'title': 'Malnad A2 Desi Cow Milk',
      'id': '#4587',
      'date': 'May 18, 2:08 PM',
      'price': '₹43.0',
    },
    {
      'title': 'Indus A2 Desi Cow Milk',
      'id': '#6548',
      'date': 'May 18, 2:08 PM',
      'price': '₹43.0',
    },
    {
      'title': 'Vrindavan Buffalo Milk',
      'id': '#9856',
      'date': 'May 18, 2:08 PM',
      'price': '₹44.0',
    },
    {
      'title': 'Vrindavan Natural Cow Milk',
      'id': '#4567',
      'date': 'May 18, 2:08 PM',
      'price': '₹31.0',
    },
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        shape: Border(bottom: BorderSide(color: Color(0XFF1BBC9B), width: 1)),
        shadowColor: Colors.black.withOpacity(0.5),
        backgroundColor: Color(0XFFECECEC),
        elevation: 4,
        leading: Padding(
          padding: const EdgeInsets.only(left: 0),
          child: IconButton(
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
          'Billing History',
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: Color(0XFF464646)),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color(0XFFECECEC),
        child: history == false
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        history = true;
                      });
                    },
                    child: Image.asset(
                      'assets/img/wallet.png',
                      height: 150,
                      width: 150,
                    ),
                  ),
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
              )
            : SingleChildScrollView(
              child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 0, right: 0, top: 20),
                      child: Container(
                        child: ListView.separated(
                          scrollDirection: Axis.vertical,
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {},
                              child: Container(
                                decoration:
                                    BoxDecoration(color: Color(0XFFF1F1F1)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20, top: 10, bottom: 10),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            _list[index]['title'],
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600,
                                                color: Color(0XFF2B2B2B)),
                                          ),
                                          SizedBox(height: 3,),
                                          Text(
                                            _list[index]['id'],
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0XFF666666)),
                                          ),
                                          SizedBox(height: 3,),
                                          Text(
                                            _list[index]['date'],
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.normal,
                                                color: Color(0XFF989898)),
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Text(
                                        _list[index]['price'],
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0XFF444444)),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                          itemCount: _list.length,
                          separatorBuilder: (context, index) {
                            return SizedBox(height: 10);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
            ),
      ),
    );
  }
}
