import 'package:flutter/material.dart';
import 'package:vridavan/Pages/CartScreen.dart';
import 'package:vridavan/Pages/CategoriesScreen.dart';
import 'package:vridavan/Pages/DashboardScreen.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({Key? key}) : super(key: key);

  @override
  _ScheduleScreenState createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  bool tab = false;
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
    return DefaultTabController(
      length: 7,
      child: Scaffold(
          appBar: AppBar(
              shape: Border(
                  bottom: BorderSide(width: 1, color: Color(0XFF1BBC9B))),
              backgroundColor: Color(0XFFECECEC),
              elevation: 4,
              automaticallyImplyLeading: false,
              shadowColor: Colors.black.withOpacity(0.5),
              title: Text(
                'My Schedule',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: Color(0XFF464646)),
              ),
              actions: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Color(0XFFA4A4A4))),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.check,
                              color: Color(0XFF515151),
                              size: 15,
                            ),
                            Text(
                              'My Subscriptions',
                              style: TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0XFF515151)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
              centerTitle: true,
              bottom: TabBar(
                indicatorColor: Colors.transparent,
                isScrollable: true,
                tabs: [
                  Column(
                    children: [
                      Text(
                        'Su',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Color(0XFF838383)),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '28',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Color(0XFF626262)),
                      ),
                      SizedBox(
                        height: 5,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Mo',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Color(0XFF838383)),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        '29',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Color(0XFF626262)),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Tu',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Color(0XFF838383)),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        '30',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Color(0XFF626262)),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'We',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Color(0XFF838383)),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        '01',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Color(0XFF626262)),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Th',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Color(0XFF838383)),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        '02',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Color(0XFF626262)),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Fr',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Color(0XFF838383)),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        '03',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Color(0XFF626262)),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Sa',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Color(0XFF838383)),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        '04',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Color(0XFF626262)),
                      ),
                    ],
                  ),
                ],
              )),
          body: tab == false
              ? Container(
            color: Color(0XFFECECEC),
            // height: double.infinity,
            height: height,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/img/brand-identity 1.png'),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'No Orders Scheduled',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: Color(0XFF515151)),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Look’s like you haven’t ordered \n anything for this day',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Color(0XFF7A7A7A)),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                  ),
                  // ignore: deprecated_member_use
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(context,  MaterialPageRoute(
                          builder: (context) =>  CategoriesScreen())
                      );
                    },
                    padding: EdgeInsets.symmetric(vertical: 15),
                    color: Color(0XFF437F77),
                    shape: StadiumBorder(),
                    child: Center(
                        child: Text(
                          'Order Now',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                              color: Colors.white),
                        )),
                  ),
                ),
              ],
            ),
          )
              : TabBarView(children: [
            Icon(Icons.search),
            Icon(Icons.search),
            Icon(Icons.search),
            Icon(Icons.search),
            Icon(Icons.search),
            Icon(Icons.search),
            Icon(Icons.search),
          ])),
    );  }
}