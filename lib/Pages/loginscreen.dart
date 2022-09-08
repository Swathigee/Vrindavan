import 'package:flutter/material.dart';
import 'VerificationScreen.dart';

class loginscreen extends StatefulWidget {
  const loginscreen({Key? key}) : super(key: key);

  @override
  _loginscreenState createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController phone= TextEditingController();

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
                      child: Image.asset('assets/img/Onboarding-Screen-4 1.png'),
                    )),
                Positioned(
                    top: 293,
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
                        Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w700,
                              color: Color(0XFF18544C)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Enter your phone number to proceed',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        /*Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              controller: phone,
                              //autofocus: true,
                              style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                              decoration: InputDecoration(
                                hintText: '10 Digit Mobile Number',
                                fillColor: Colors.white,
                                filled: true,
                                contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(35.0),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                              validator: (value) {
                                if (value!.isEmpty ||
                                    value.length>10||value.length<10) {
                                  return 'Enter a valid Phone no';
                                }
                                return null;
                              },
                            )
                        ),*/
                        Stack(
                          children: [
                        Container(
                          color: Colors.transparent,
                          width: MediaQuery.of(context).size.width-40,
                          //height: 50,
                          //padding: EdgeInsets.fromLTRB(10, 3, 10, 0),
                          child:Material(
                              elevation: 2,
                              shadowColor: Colors.black,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12),
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  controller: phone,
                                  validator: (value) {
                                    if (value!.isEmpty ||
                                        value.length>10||value.length<10) {
                                      return 'Enter a valid Phone no';
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                      hintText: '10 Digit Mobile Number',
                                      hintStyle: TextStyle(fontSize: 16),
                                      isDense: true, // important line
                                      contentPadding: EdgeInsets.fromLTRB(10, 15, 10,15),// control your hints text size
                                      //fillColor:  Colors.white30,
                                      filled: true,
                                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(50), borderSide: BorderSide.none),
                                   ),
                                ),
                              ),
                            ),
                          ),
            ]
                        ),
                        SizedBox(height: 40,),
                        SizedBox(
                          width: 150,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                _formKey.currentState!.save();
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) =>
                                        VerificationScreen()));
                              }
                            },
                            child: Text('Send OTP',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 22),),
                            style: ElevatedButton.styleFrom(
                                shadowColor: Colors.transparent,
                                primary: Color(0XFF437F77),
                                shape: StadiumBorder()),
                          ),
                        )
                      ],
                    ))
              ],
            ),
          )
          )
      ),
    );
  }
}