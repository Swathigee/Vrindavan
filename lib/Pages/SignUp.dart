import 'package:flutter/material.dart';
import 'package:vridavan/Pages/AddressScreen.dart';
import 'package:vridavan/Pages/DashboardScreen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController name= TextEditingController();
  TextEditingController email= TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: true,
          body:Form(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        key: _formKey,
        child: SingleChildScrollView(
            child: Stack(
              children: [
                Container(
                  height: height-MediaQuery.of(context).padding.top,
                  width: width,
                  color: Color(0XFFC9C9C9),
                ),
                Positioned(
                    bottom: -50,
                    child: Container(
                      child: Image.asset('assets/img/Vector 3.png'),
                    )),
                Positioned(
                    top: 0,
                    child: Container(
                      width: width,
                      child: Image.asset('assets/img/varindavan-2.png'),
                    )),
                Positioned(
                    top: 293,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            color: Color(0XFF437F77),
                            width: width,
                            height: 20,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width:width-35 ,
                            child: Text(
                              'Fresh Dairy And Grocery \n Products At Your Door Steps',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0XFF18544C)),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Enter Your Details',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            color: Colors.transparent,
                            width: MediaQuery.of(context).size.width-24,
                            child: Material(
                              elevation: 2,
                              shadowColor: Colors.black,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12),
                                child: TextFormField(
                                  keyboardType: TextInputType.name,
                                  controller: name,
                                  decoration: InputDecoration(
                                      hintText: 'Enter Your Name',
                                      hintStyle: TextStyle(fontSize: 16),
                                      isDense: true, // important line
                                      contentPadding: EdgeInsets.fromLTRB(10, 15, 10,15),// control your hints text size
                                      fillColor:  Colors.white30 ,
                                      filled: true,
                                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(50), borderSide: BorderSide.none)),
                                  validator: (value) {
                                    if (value!.isEmpty ) {
                                      return 'Enter your name!';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            color: Colors.transparent,
                            width: MediaQuery.of(context).size.width-24,
                            child: Material(
                              elevation: 2,
                              shadowColor: Colors.black,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12),
                                child: TextFormField(
                                  keyboardType: TextInputType.emailAddress,
                                  controller: email,
                                  decoration: InputDecoration(
                                      hintText: 'Enter Your Email',
                                      hintStyle: TextStyle(fontSize: 16),
                                      isDense: true, // important line
                                      contentPadding: EdgeInsets.fromLTRB(10, 15, 10,15),// control your hints text size
                                      fillColor:  Colors.white30 ,
                                      filled: true,
                                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(50), borderSide: BorderSide.none)),
                                  validator: (value) {
                                    if (value!.isEmpty ||
                                        !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                            .hasMatch(value)) {
                                      return 'Enter a valid email!';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 40,),
                          SizedBox(
                            width: 150,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {
                             if (_formKey.currentState!.validate()) {
                                _formKey.currentState!.save();
                          Navigator.push(context, MaterialPageRoute(builder: (context) => AddressScreen()));
                           }
                                },
                              child: Text('Sign Up',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 22),),
                              style: ElevatedButton.styleFrom(
                                  shadowColor: Colors.transparent,
                                  primary: Color(0XFF437F77),
                                  shape: StadiumBorder()),
                            ),
                          )

                        ],
                      ),
                    ))
              ],
            ),
          )
      ),
    )
    );
  }
}