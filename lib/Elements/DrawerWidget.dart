import 'package:flutter/material.dart';
import 'package:vridavan/Pages/AboutUs.dart';
import 'package:vridavan/Pages/BillingHistory.dart';
import 'package:vridavan/Pages/BillingHistoryEmptyScreen.dart';
import 'package:vridavan/Pages/ContactUsScreen.dart';
import 'package:vridavan/Pages/Myorders.dart';
import 'package:vridavan/Pages/loginscreen.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
              child: Row(
                children: [
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        color: Color(0XFF437F77),
                        borderRadius: BorderRadius.circular(100)),
                    child: Center(
                      child: Image.asset('assets/img/user.png'),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nirmal Rubatharan',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color(0XFF676767)),
                      ),
                      Text(
                        'nirmalrubathara@gamil.com',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: Color(0XFFAFAFAF)),
                      ),
                      Text(
                        '9876543210',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: Color(0XFFAFAFAF)),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Divider(
              color: Color(0XFFAFAFAF),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 5),
              child: Column(
                children: [
                  ListTile(
                    onTap: () {},
                    leading: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Address',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Color(0XFF5A5656)),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Home Anna Nagar Street',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Color(0XFF7C7C7C)),
                        ),
                        Text(
                          'Guest User Building - VF',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Color(0XFF7C7C7C)),
                        ),
                      ],
                    ),
                    trailing: Image.asset(
                      'assets/img/edit.png',
                    ),
                    // ImageIcon(AssetImage('assets/img/edit.png'),color: Color(0XFF437F77),
                    // ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(
                    color: Color(0XFFAFAFAF),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BillingHistory()));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: Text(
                          'Billing History',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Color(0XFF5A5656)),
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    color: Color(0XFFAFAFAF),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ContactUsScreen()));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: Text(
                          'Contact Us',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Color(0XFF5A5656)),
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    color: Color(0XFFAFAFAF),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AboutUsScreen()));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: Text(
                          'About Us',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Color(0XFF5A5656)),
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    color: Color(0XFFAFAFAF),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MyOrdersScreen()));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: Text(
                          'My Orders',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Color(0XFF5A5656)),
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    color: Color(0XFFAFAFAF),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => loginscreen()));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: Text(
                          'Log Out',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Color(0XFF5A5656)),
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    color: Color(0XFFAFAFAF),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
