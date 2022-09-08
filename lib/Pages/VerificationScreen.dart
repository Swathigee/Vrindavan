import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'SignUp.dart';


class VerificationScreen extends StatefulWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  _VerificationScreenState createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: true,
          body:SingleChildScrollView(
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
                      child: Image.asset('assets/img/vrindavan.png'),
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
                          'Verification Code',
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w700,
                              color: Color(0XFF18544C)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'You will get a OTP via SMS',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color(0XFF494949)),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 1.2,
                          child: OTPTextField(
                            length: 6,
                            width: MediaQuery.of(context).size.width,
                            fieldWidth: 35,
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                            textFieldAlignment: MainAxisAlignment.spaceAround,
                            fieldStyle: FieldStyle.underline,
                            onCompleted: (pin) {
                              print("Completed: " + pin);
                              // if(pin == "1234"){
                              //   Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //       builder: (contexts) => locationScreen(
                              //       ),
                              //     ),
                              //   );
                              //
                              // }
                            },
                          ),
                        ),
                        SizedBox(height: 40,),
                        SizedBox(
                          width: 150,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => SignUpScreen()));
                      },
                            child: Text('Next',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 22),),
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
    );
  }
}
