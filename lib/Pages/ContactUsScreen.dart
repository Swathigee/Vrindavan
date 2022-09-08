import 'package:flutter/material.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  _ContactUsScreenState createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
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
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Color(0XFF1BBC9B),
              ),
            ),
          ),
          title: Text(
            'Contact Us',
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: Color(0XFF464646)),
          ),
          centerTitle: true,
        ),
        body: Container(
          color: Color(0XFFECECEC),
          // height: double.infinity,
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 50,),
                Image.asset(
                  'assets/img/Vrindavan-Farm-Logo-Color 1.png',
                  height: 200,
                  width: 200,
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Container(
                    width: width,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 10.0,
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: 20, bottom: 10, left: 20, right: 20),
                          child: Container(
                              // height: 110,
                              // width: width - 90,
                              child: Text(
                                'Pellentesque ipsum lorem, imperdiet et nisi vel, pharetra congue justo. Praesent ac tempor arcu, quis accumsan lorem. Integer luctus leo',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color(0XFF7C7C7C),
                                    height: 1.8),
                              )),
                        ),
                        SizedBox(height: 20,),
                        Padding(
                          padding: EdgeInsets.only(bottom: 10,left: 20,right: 20),
                          child: SizedBox(
                            height: height / 16,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                elevation: MaterialStateProperty.all(0),
                                backgroundColor:
                                MaterialStateProperty.all(Color(0XFFECECEC)),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25.0),
                                  ),
                                ),
                              ),
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 5),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                            'assets/img/bx_bxs-phone-call.png'),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          'Call Us',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color(0XFF616161),
                                              fontWeight: FontWeight.w500),
                                          textAlign: TextAlign.start,
                                        ),
                                      ],
                                    ),
                                  )),
                              onPressed: () {},
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 10,left: 20,right: 20),
                          child: SizedBox(
                            height: height / 16,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                elevation: MaterialStateProperty.all(0),
                                backgroundColor:
                                MaterialStateProperty.all(Color(0XFFECECEC)),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25.0),
                                  ),
                                ),
                              ),
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 5),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                            'assets/img/bi_chat-text-fill.png'),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          'Chat with Us',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color(0XFF616161),
                                              fontWeight: FontWeight.w500),
                                          textAlign: TextAlign.start,
                                        ),
                                      ],
                                    ),
                                  )),
                              onPressed: () {},
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 30,left: 20,right: 20),
                          child: SizedBox(
                            height: height / 16,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                elevation: MaterialStateProperty.all(0),
                                backgroundColor:
                                MaterialStateProperty.all(Color(0XFFECECEC)),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25.0),
                                  ),
                                ),
                              ),
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 5),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                            'assets/img/ant-design_mail-filled.png'),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          'Mail Us',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color(0XFF616161),
                                              fontWeight: FontWeight.w500),
                                          textAlign: TextAlign.start,
                                        ),
                                      ],
                                    ),
                                  )),
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 50,),
              ],
            ),
          ),
        ));
  }
}
