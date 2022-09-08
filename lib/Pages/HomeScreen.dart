import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:vridavan/Elements/DrawerWidget.dart';
import 'package:vridavan/Pages/Milk&DairyScreen.dart';
import 'package:vridavan/Pages/ProductDetailsScreen.dart';
import 'package:vridavan/Pages/RiceScreen.dart';
import 'package:vridavan/Pages/CategoriesScreen.dart';

import 'MyCartScreen.dart';
import 'NotificationScreen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey =  GlobalKey<ScaffoldState>();

  final CarouselController _controller = CarouselController();
  int _currentIndex = 0;

  List _images = [
    'assets/img/WhatsApp-Image-2018-10-18-at-8.06 1.png',
    'assets/img/WhatsApp-Image-2018-10-18-at-8.06 1.png',
    'assets/img/WhatsApp-Image-2018-10-18-at-8.06 1.png',
  ];

  List<dynamic> _categories = [
    {
      'title': 'Milk & Dairy',
      'image': 'assets/img/Untitled-5 1.png',
    },
    {
      'title': 'Colo Pressed Oils',
      'image': 'assets/img/Untitled-5 12.png',
    },
    {
      'title': 'Rice',
      'image': 'assets/img/Untitled-5 1 (1).png',
    },
    {
      'title': 'Pulses',
      'image': 'assets/img/01 3.png',
    },
    {
      'title': 'Millets',
      'image': 'assets/img/01 3 (1).png',
    },
    {
      'title': 'Flours',
      'image': 'assets/img/01 3 (2).png',
    },
    {
      'title': 'Jaggery & Sugar',
      'image': 'assets/img/01 3 (3).png',
    },
    {
      'title': 'Spices',
      'image': 'assets/img/01 3 (4).png',
    },
    {
      'title': 'Idli & Dosa Batter',
      'image': 'assets/img/01 3 (5).png',
    },
    {
      'title': 'Gardening',
      'image': 'assets/img/01 3 (8).png',
    },
    {
      'title': 'Health Drink',
      'image': 'assets/img/01 3 (6).png',
    },
    {
      'title': 'Nuts & Dry Fruits',
      'image': 'assets/img/01 3 (7).png',
    },
  ];

  List<dynamic> _list1 = [
    {
      'title': 'Karuppu Kavuni - Black Rice',
      'image': 'assets/img/content9442 1.png',
      'size': '500gm',
      'normalPrice': '₹114',
      'reducedPrice': '₹114',
    },
    {
      'title': 'A2 Desi Cow panner',
      'image': 'assets/img/content9442 1.png',
      'size': '500gm',
      'normalPrice': '₹1399',
      'reducedPrice': '₹375',
    },
    {
      'title': 'Karuppu Kavuni - Black Rice',
      'image': 'assets/img/content9442 1.png',
      'size': '500gm',
      'normalPrice': '₹1099',
      'reducedPrice': '₹1020',
    },
  ];

  List<dynamic> _list2 = [
    {
      'title': 'Karuppu Kavuni - Black Rice',
      'image': 'assets/img/content9442 2.png',
      'size': '1kg',
      'price': '₹114',
    },
    {
      'title': 'Mappillai Samba Rice',
      'image': 'assets/img/content9442 1 (1).png',
      'size': '1kg',
      'price': '₹120',
    },
    {
      'title': 'Karuppu Kavuni - Black Rice',
      'image': 'assets/img/content9442 2.png',
      'size': '1kg',
      'price': '₹90',
    },
  ];

  List _bannerImages = [
    'assets/img/Untitled-8 2.png',
    'assets/img/Untitled-8 3.png',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0XFFECECEC),
          key: _scaffoldKey,
          drawer: DrawerWidget(),
          appBar: AppBar(

            leading: IconButton(
              icon: Icon(Icons.sort, color: Color(0XFF1BBC9B)),
              onPressed: () => _scaffoldKey.currentState!.openDrawer(

              ),

            ),
            automaticallyImplyLeading: false,
            backgroundColor: Color(0XFFECECEC),
            elevation: 0,
            centerTitle: true,
            title: Text(
              'Vrindavan Farms',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: Color(0XFF2E2E2E)),
            ),
            actions: <Widget>[
              Icon(
                Icons.search,
                color: Color(0XFF000000),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NotificationScreen()));
                },
                child: Icon(
                  Icons.notifications_outlined,
                  color: Color(0XFF000000),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16,right: 20),
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
            color: Color(0XFFECECEC),
            height: double.infinity,
            width: double.infinity,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 0, bottom: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: Color(0XFF1BBC9B),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Anna Nagar, Anna Nagar West,',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0XFF4F4F4F)),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: CarouselSlider.builder(
                        carouselController: _controller,
                        options: CarouselOptions(
                          viewportFraction: 1,
                          onPageChanged: (index, reason) {
                            setState(
                              () {
                                _currentIndex = index;
                              },
                            );
                          },
                          height: 200,
                          enableInfiniteScroll: false,
                          autoPlay: true,
                          initialPage: 0,
                        ),
                        itemCount: _images.length,
                        itemBuilder: (context, itemIndex, realIndex) {
                          return Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20)),
                              child: Image.asset(
                                _images[itemIndex],
                                width: MediaQuery.of(context).size.width,
                                fit: BoxFit.fill,
                              ));
                        },
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20, bottom: 20),
                            child: Text(
                              'Deal of the day',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  color: Color(0XFF212121)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 0, right: 0),
                            child: Container(
                              height: 230,
                              child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                padding: EdgeInsets.zero,
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                      onTap: () {
                                        print(index);
                                      },
                                      child: Container(
                                        // height: 210,
                                        width: 130,
                                        margin: EdgeInsets.only(left: 20,right: index == _list1.length-1 ? 20 : 0,bottom: 10),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.1),
                                                  offset: Offset(0.0, 2),
                                                  spreadRadius: 2.0,
                                                  blurRadius: 2.0)
                                            ],
                                            borderRadius: BorderRadius.circular(
                                             20
                                            )),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Image.asset(
                                              _list1[index]['image'],
                                              height: 130,
                                              width: 130,
                                              fit: BoxFit.fill,
                                            ),
                                            // Spacer(),
                                            Container(
                                              height: 90,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(6.0),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      _list1[index]['title'],
                                                      style: TextStyle(
                                                          fontSize: 11,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color:
                                                              Color(0XFF2B2B2B)),
                                                    ),
                                                    // SizedBox(height: 3,),
                                                    Spacer(),
                                                    Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment.end,
                                                      children: [
                                                        Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              _list1[index]
                                                                  ['size'],
                                                              style: TextStyle(
                                                                  fontSize: 8,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  color: Color(
                                                                      0XFF8D8C8C)),
                                                            ),
                                                            SizedBox(
                                                              height: 2,
                                                            ),
                                                            Text(
                                                              _list1[index]
                                                                  ['normalPrice'],
                                                              style: TextStyle(
                                                                  fontSize: 8,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  color: Color(
                                                                      0XFF8E8E8E),
                                                                  decoration:
                                                                      TextDecoration
                                                                          .lineThrough),
                                                            ),
                                                            Text(
                                                              _list1[index][
                                                                  'reducedPrice'],
                                                              style: TextStyle(
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                color: Color(
                                                                    0XFF2D2D2D),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Spacer(),
                                                        Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Visibility(
                                                              visible: index == 1,
                                                              child:
                                                                  GestureDetector(
                                                                onTap: () {},
                                                                child: Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                          borderRadius:
                                                                              BorderRadius.circular(
                                                                                  100),
                                                                          border:
                                                                              Border.all(
                                                                            color:
                                                                                Color(0XFF1BBC9B),
                                                                          )),
                                                                  child: Padding(
                                                                    padding: EdgeInsets
                                                                        .symmetric(
                                                                            horizontal:
                                                                                9,
                                                                            vertical:
                                                                                3),
                                                                    child: Text(
                                                                      'Subscribe',
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              10,
                                                                          color: Color(
                                                                              0XFF262626)),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              height: 3,
                                                            ),
                                                            GestureDetector(
                                                              onTap: () {},
                                                              child: Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color(
                                                                      0XFF1BBC9B),
                                                                  borderRadius: BorderRadius
                                                                      .all(Radius
                                                                          .circular(
                                                                              100)),
                                                                ),
                                                                child: Padding(
                                                                  padding: EdgeInsets
                                                                      .symmetric(
                                                                          horizontal:
                                                                              20,
                                                                          vertical:
                                                                              3),
                                                                  child: Text(
                                                                    'Add',
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            14,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w500,
                                                                        color: Colors
                                                                            .white),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ));
                                },
                                itemCount: _list1.length,
                                separatorBuilder: (context, index) {
                                  return SizedBox(width: 0);
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, top: 20, bottom: 20),
                              child: Text(
                                'Shop by Categories',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20,
                                    color: Color(0XFF212121)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:45),
                              child: TextButton(
                                style: TextButton.styleFrom(
                                  textStyle: const TextStyle(fontSize: 18, color:Colors.tealAccent),
                                ),
                                onPressed: () {
                                  Navigator.push(context,  MaterialPageRoute(
                                      builder: (context) =>  CategoriesScreen())
                                  );
                                },
                                child: const Text('Show more',style: TextStyle(fontSize: 15, color: Color(0XFF1BBC9B),fontWeight: FontWeight.w600) ),
                              ),
                            )
                          ],
                        ),
                        GridView.builder(
                            itemCount: _categories.length,
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            padding: EdgeInsets.all(5),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                    crossAxisSpacing: 5,
                                    childAspectRatio: 1,
                                    mainAxisSpacing: 20),
                            itemBuilder: (BuildContext context, int index) {
                              return GestureDetector(
                                onTap: () {
                                  if(index==0){
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                MilkDairy()));
                                  }
                                  else if(index==2){
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                RiceScreen()));
                                  }

                                },
                                child: Container(
                                  // height: 200,
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 80,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Center(
                                            child: Image.asset(
                                              _categories[index]["image"],
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 5),
                                        child: Container(
                                            // height: 50,
                                            //   constraints: BoxConstraints(
                                            //       maxWidth: 95),
                                            child: Text(
                                          _categories[index]["title"],
                                          style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0XFF2D2D2D),
                                          ),
                                          textAlign: TextAlign.center,
                                        )),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            }),
                      ],
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, top: 20, bottom: 20),
                            child: Text(
                              'Traditional Rice',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  color: Color(0XFF212121)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 0, right: 0),
                            child: Container(
                              height: 220,
                              child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                padding: EdgeInsets.zero,
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        width: 130,
                                        margin: EdgeInsets.only(left: 20,right: index == _list2.length-1 ? 20 : 0,bottom: 10),
                                        decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.1),
                                                  offset: Offset(0.0, 2),
                                                  spreadRadius: 2.0,
                                                  blurRadius: 2.0)
                                            ],
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(
                                             20
                                            )),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Image.asset(
                                              _list2[index]['image'],
                                              height: 130,
                                              width: 130,
                                              fit: BoxFit.fill,
                                            ),
                                            // Spacer(),
                                            Container(
                                              height: 80,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(6.0),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      _list2[index]['title'],
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color:
                                                              Color(0XFF2B2B2B)),
                                                    ),
                                                    Spacer(),
                                                    Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment.end,
                                                      children: [
                                                        Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              _list2[index]
                                                                  ['size'],
                                                              style: TextStyle(
                                                                  fontSize: 8,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  color: Color(
                                                                      0XFF8D8C8C)),
                                                            ),
                                                            SizedBox(
                                                              height: 2,
                                                            ),
                                                            Text(
                                                              _list2[index]
                                                                  ['price'],
                                                              style: TextStyle(
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                color: Color(
                                                                    0XFF2D2D2D),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Spacer(),
                                                        Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            SizedBox(
                                                              height: 3,
                                                            ),
                                                            GestureDetector(
                                                              onTap: () {},
                                                              child: Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color(
                                                                      0XFF1BBC9B),
                                                                  borderRadius: BorderRadius
                                                                      .all(Radius
                                                                          .circular(
                                                                              100)),
                                                                ),
                                                                child: Padding(
                                                                  padding: EdgeInsets
                                                                      .symmetric(
                                                                          horizontal:
                                                                              20,
                                                                          vertical:
                                                                              3),
                                                                  child: Text(
                                                                    'Add',
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            14,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w500,
                                                                        color: Colors
                                                                            .white),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ));
                                },
                                itemCount: _list2.length,
                                separatorBuilder: (context, index) {
                                  return SizedBox(width: 0);
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 30),
                      child: ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 170,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20)),
                              child: Image.asset(
                                _bannerImages[index],
                                fit: BoxFit.fill,
                              ),
                            ),
                          );
                        },
                        itemCount: _bannerImages.length,
                        separatorBuilder: (context, index) {
                          return SizedBox(height: 20);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
