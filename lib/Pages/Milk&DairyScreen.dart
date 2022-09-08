import 'package:flutter/material.dart';
import 'package:vridavan/Pages/AddSubscription.dart';
import 'package:vridavan/Pages/ProductDetailsScreen.dart';

import 'MyCartScreen.dart';

class MilkDairy extends StatefulWidget {
  const MilkDairy({Key? key}) : super(key: key);

  @override
  _MilkDairyState createState() => _MilkDairyState();
}

class _MilkDairyState extends State<MilkDairy> {
  @override
  void initState() {
    super.initState();
  }

  List pocketname = [
    'Vrindavan Natural Cow Milk',
    'Malnad A2 Desi Cow Milk',
    'Indus A2 Desi Cow Milk',
    'Vrindavan Buffalo Milk'
  ];
  List pocketimage = [
    'assets/img/packet1.png',
    'assets/img/packet2.png',
    'assets/img/packet3.png',
    'assets/img/packet4.png',
  ];
  List pocketcost = [
    '₹31.0',
    '₹43.0',
    '₹43.0',
    '₹44.0',
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0XFFECECEC),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Color(0XFF1BBC9B),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Milk & Dairy',
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: Color(0XFF464646)),
        ),
        actions: [
          Transform.translate(
            offset: Offset(15, 0),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search_rounded,
                color: Colors.black,
                size: 28,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16,right: 20,left: 10),
            child: GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyCartScreen()));
                },
                child: Stack(
                  children: [
                    Icon(
                      Icons.shopping_cart_outlined,
                      color: Color(0XFF000000),
                    ),
                    Positioned(
                        right: 0,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color(0XFF1BBC9B),
                              borderRadius: BorderRadius.circular(100)
                          ),
                          height: 11,width: 11,
                          child: Center(
                            child: Text('0',style: TextStyle(fontSize: 8,fontWeight: FontWeight.w600,color: Colors.white),),
                          ),
                        ))
                  ],
                )

            ),
          ),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: width,
        color: Color(0XFFECECEC),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              height: height / 5,
              width: width - 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                image: DecorationImage(
                  image: AssetImage("assets/img/A2DesiCowMilk.png"),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: height / 2,
              child: DefaultTabController(
                length: 5,
                initialIndex: 0,
                child: Scaffold(
                  appBar: PreferredSize(
                    preferredSize: Size.fromHeight(80),
                    child: Container(
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                          spreadRadius: 0.1,
                          color: Colors.black.withOpacity(0.1),
                          offset: Offset(0, 4.0),
                          blurRadius: 2,
                        )
                      ]),
                      child: AppBar(
                        shape: Border(
                            bottom: BorderSide(
                                width: 4,
                                color: Color(0XFF1BBC9B).withAlpha(20))),
                        elevation: 0,
                        backgroundColor: Color(0XFFECECEC),
                        automaticallyImplyLeading: false,
                        bottom: TabBar(
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                          ),
                          unselectedLabelColor: Color(0XFF6C6C6C),
                          labelColor: Colors.black,
                          indicatorColor: Color(0XFF1BBC9B),
                          indicatorWeight: 3,
                          indicatorSize: TabBarIndicatorSize.label,
                          isScrollable: true,
                          tabs: [
                            Tab(
                              text: 'Milk',
                              iconMargin: EdgeInsets.only(bottom: 3),
                              icon: Container(
                                height: 55,
                                width: 55,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                ),
                                child: Image.asset('assets/img/milk.png'),
                              ),
                            ),
                            Tab(
                              text: 'Curd',
                              iconMargin: EdgeInsets.only(bottom: 3),
                              icon: Container(
                                height: 55,
                                width: 55,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                ),
                                child: Image.asset('assets/img/curd.png'),
                              ),
                            ),
                            Tab(
                              text: 'Paneer',
                              iconMargin: EdgeInsets.only(bottom: 3),
                              icon: Container(
                                height: 55,
                                width: 55,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                ),
                                child: Image.asset('assets/img/paneer.png'),
                              ),
                            ),
                            Tab(
                              text: 'Chee & Butter',
                              iconMargin: EdgeInsets.only(bottom: 3),
                              icon: Container(
                                height: 55,
                                width: 55,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                ),
                                child:
                                    Image.asset('assets/img/chee&butter.png'),
                              ),
                            ),
                            Tab(
                              text: 'Buttermilk',
                              iconMargin: EdgeInsets.only(bottom: 3),
                              icon: Container(
                                height: 55,
                                width: 55,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                ),
                                child: Image.asset('assets/img/curd.png'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  backgroundColor: Color(0XFFECECEC),
                  body: TabBarView(
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      productlist(height : height,width : width),
                      productlist(height : height,width : width),
                      productlist(height : height,width : width),
                      productlist(height : height,width : width),
                      productlist(height : height,width : width),

                    ],
                  ),
                ),
              ),
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (conetxt) => RiceScreen()));
              },
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 50,
                  width: width,
                  decoration: BoxDecoration(
                      color: Color(0XFF437F77),
                      borderRadius: BorderRadius.circular(30)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      children: [
                        Text(
                          'Checkout',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Color(0XFFFFFFFF)),
                        ),
                        Spacer(),
                        Text(
                          '1 item',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Color(0XFFFFFFFF)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 10),
                          child: VerticalDivider(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '₹31.0',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Color(0XFFFFFFFF)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }

  Widget productlist({required double height, required double width}) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: pocketname.length,
            itemBuilder: (BuildContext context, index) {
              int indexvalue = index;
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProductDetailsScreen()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                  ),
                  child: Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(color: Color(0XFFFAFAFA)),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 70,
                            width: 80,
                            decoration: BoxDecoration(
                                color: Color(0XFFFFFFFF),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      offset: Offset(0.0, 2),
                                      spreadRadius: 2.0,
                                      blurRadius: 2.0)
                                ],
                                border: Border.all(color: Color(0XFFE2E2E2)),
                                borderRadius: BorderRadius.circular(20)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(pocketimage[index]),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                constraints: BoxConstraints(maxWidth: width/2.18),

                                child: Text(
                                  pocketname[index],
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Color(0XFF2B2B2B),
                                      fontSize: 12),overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                '500ml',
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color: Color(0XFF595959),
                                    fontSize: 12),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              AddSubscriptionScreen()));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Color(0XFF1BBC9B),
                                      borderRadius: BorderRadius.circular(6)),
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(10, 3, 10, 3),
                                    child: Text(
                                      "Subscribe",
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end ,
                            children: [
                              Text(
                                pocketcost[index],
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Color(0XFF595959),
                                    fontSize: 18),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 15),
                                child: indexvalue == 0
                                    ? Row(
                                        children: [
                                          Container(
                                            height: 17,
                                            width: 17,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                                border: Border.all(
                                                  width: 1.5,
                                                  color: Color(0XFF1BBC9B),
                                                )),
                                            child: Center(
                                              child: Icon(Icons.remove,
                                                  size: 10,
                                                  color: Color(0XFF1BBC9B)),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            '1.0',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.normal,
                                                color: Color(0XFF384B69)),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Container(
                                            height: 17,
                                            width: 17,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                                border: Border.all(
                                                  width: 1.5,
                                                  color: Color(0XFF1BBC9B),
                                                )),
                                            child: Center(
                                              child: Icon(Icons.add,
                                                  size: 10,
                                                  color: Color(0XFF1BBC9B)),
                                            ),
                                          ),
                                        ],
                                      )
                                    : Container(
                                        decoration: BoxDecoration(
                                            color: Color(0XFF1BBC9B),
                                            borderRadius:
                                                BorderRadius.circular(6)),
                                        child: Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(15, 3, 15, 3),
                                          child: Text(
                                            "Add",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 10),
                                          ),
                                        ),
                                      ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
