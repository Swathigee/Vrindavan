import 'package:flutter/material.dart';
import 'package:vridavan/Pages/PlansScreen.dart';
import 'package:vridavan/Pages/ScheduleScreen.dart';
import 'package:vridavan/Pages/SupportsScreen.dart';
import 'package:vridavan/Pages/WalletScreen.dart';
import 'HomeScreen.dart';

class DashBoard extends StatefulWidget {
  DashBoard({Key? key,}) : super(key: key);
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  final GlobalKey<ScaffoldState> scaffoldKey =  GlobalKey<ScaffoldState>();
  int pageIndex = 0;
  List<Widget> listItems = [
    HomeScreen(),
    ScheduleScreen(),
    WalletScreen(),
    PlansScreen(),
    SupportScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      // ignore: missing_return
      onWillPop: () async {
        if (Navigator.of(context).userGestureInProgress)
          return false;
        else
          return true;
      },
      child: Scaffold(
        backgroundColor: Color(0XFFECECEC),
        key: scaffoldKey,
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            currentIndex: pageIndex,
            backgroundColor: Color(0XFFF1F1F1),
            selectedItemColor: Colors.white,
            unselectedItemColor: Color(0XFFACACAC),
            onTap: (value) {
              setState(() {
                pageIndex = value;
                print('pageindex : $pageIndex');
              });
            },
            // this will be set when a new tab is tapped
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  width: 42,
                  height: 42,
                  decoration: BoxDecoration(
                    color: pageIndex == 0 ? Color(0XFF1BBC9B) : Colors.transparent,
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                  child: ImageIcon(
                    AssetImage("assets/img/Vector.png"
                    ),),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  width: 42,
                  height: 42,
                  decoration: BoxDecoration(
                    color: pageIndex == 1 ? Color(0XFF1BBC9B) : Colors.transparent,
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                  child: ImageIcon(
                    AssetImage("assets/img/Vector (1).png"
                    ),),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                  label: '',
                  icon: Container(
                    width: 42,
                    height: 42,
                    decoration: BoxDecoration(
                      color: pageIndex == 2 ? Color(0XFF1BBC9B) : Colors.transparent,
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                    child: ImageIcon(
                      AssetImage("assets/img/Vector (2).png"
                      ),),
                  )),
              BottomNavigationBarItem(
                icon: Container(
                  width: 42,
                  height: 42,
                  decoration: BoxDecoration(
                    color: pageIndex == 3 ? Color(0XFF1BBC9B) : Colors.transparent,
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                  child: ImageIcon(
                    AssetImage("assets/img/Vector (3).png"
                    ),),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon:
                Container(
                  width: 42,
                  height: 42,
                  decoration: BoxDecoration(
                    color: pageIndex == 4 ? Color(0XFF1BBC9B) : Colors.transparent,
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                  child: ImageIcon(
                    AssetImage("assets/img/Group.png"
                    ),),
                ),
                label: '',
              ),
            ],
          ),
        ),
        body: listItems.elementAt(pageIndex),

      ),
    );
  }
}