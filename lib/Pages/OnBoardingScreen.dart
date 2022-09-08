import 'package:flutter/material.dart';
import 'package:vridavan/CustomDesigns/CustomBackground.dart';
import 'package:vridavan/Pages/loginscreen.dart';


class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late final PageController _pageController;
  Duration pageTurnDuration = Duration(milliseconds: 500);
  Curve pageTurnCurve = Curves.ease;
  int currentIndex = 0;
@override
void initState() {
  super.initState();
  // The PageController allows us to instruct the PageView to change pages.
  _pageController = PageController();
}
  void _goForward() {
  if (currentIndex <2)
    {
      _pageController.nextPage(curve: pageTurnCurve, duration: pageTurnDuration);
    } else{
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                loginscreen()));  }
  }

  void _goBack() {
    _pageController.previousPage(
        duration: pageTurnDuration, curve: pageTurnCurve);
  }
  
  onChangedFunction(int index) {
    setState(() {
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    List<Widget> _pagesList = [
      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Image.asset
                ('assets/img/001 1.png'),
            ),
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Text("Fresh and Authentic Organic Dairy and Grocery Products",
                style: TextStyle(fontWeight: FontWeight.w600,fontSize: 32,color: Color(0XFF18544C)),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                constraints: BoxConstraints(
                  maxWidth: 180,
                ),
                child: Text("Fresh and authentic Door Steps from 4:30am and 7:30am",
                  style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18,color: Color(0XFFFFFFFF)),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Transform.translate(
              offset: Offset(-20,0),
              child: Image.asset
                ('assets/img/logo-white 2.png'),
            ),

          ],
        ),
      ),
      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Image.asset
                ('assets/img/002 1.png'),
            ),
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Text("Delivered directly from farm to your Door steps",
                style: TextStyle(fontWeight: FontWeight.w600,fontSize: 32,color: Color(0XFFFFFFFF)),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                constraints: BoxConstraints(
                  maxWidth: 240,
                ),
                child: Text("Unmatched freshness and quality at affordable price",
                  style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18,color: Color(0XFF323232)),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Transform.translate(
              offset: Offset(-20,0),
              child: Image.asset
                ('assets/img/logo-white 2.png'),
            ),

          ],
        ),
      ),
      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Image.asset
                ('assets/img/002 1 (1).png'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Authentic & Transparent",
                    style: TextStyle(fontWeight: FontWeight.w600,fontSize: 32,color: Color(0XFF18544C)),
                  ),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      Container(height: 8,width: 8,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100)
                      ),),
                      SizedBox(width: 10,),
                      Text("All natural ingredients",
                        style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18,color: Color(0XFF3A3A3A)),
                      ),
                    ],
                  ),
                  SizedBox(height: 3,),
                  Row(
                    children: [
                      Container(height: 8,width: 8,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100)
                      ),),
                      SizedBox(width: 10,),
                      Text("No artificial flavors",
                        style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18,color: Color(0XFF3A3A3A)),
                      ),
                    ],
                  ),
                  SizedBox(height: 3,),
                  Row(
                    children: [
                      Container(height: 8,width: 8,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100)
                      ),),
                      SizedBox(width: 10,),
                      Text("No Preservatives",
                        style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18,color: Color(0XFF3A3A3A)),
                      ),
                    ],
                  ),
                  SizedBox(height: 3,),
                  Row(
                    children: [
                      Container(height: 8,width: 8,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100)
                      ),),
                      SizedBox(width: 10,),
                      Text("No Harmful Processing",
                        style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18,color: Color(0XFF3A3A3A)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Start Your Subscription",
                    style: TextStyle(fontWeight: FontWeight.w600,fontSize: 28,color: Color(0XFF18544C)),
                  ),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      Container(height: 8,width: 8,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100)
                        ),),
                      SizedBox(width: 10,),
                      Text("Setup once and forget",
                        style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18,color: Color(0XFF3A3A3A)),
                      ),
                    ],
                  ),
                  SizedBox(height: 3,),
                  Row(
                    children: [
                      Container(height: 8,width: 8,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100)
                        ),),
                      SizedBox(width: 10,),
                      Text("Pause and resume as you like",
                        style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18,color: Color(0XFF3A3A3A)),
                      ),
                    ],
                  ),
                  SizedBox(height: 3,),
                  Row(
                    children: [
                      Container(height: 8,width: 8,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100)
                        ),),
                      SizedBox(width: 10,),
                      Text("Easy and safe wallet refill",
                        style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18,color: Color(0XFF3A3A3A)),
                      ),
                    ],
                  ),
                  SizedBox(height: 3,),
                  Row(
                    children: [
                      Container(height: 8,width: 8,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100)
                        ),),
                      SizedBox(width: 10,),
                      Text("100% refund policy",
                        style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18,color: Color(0XFF3A3A3A)),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 20,),
            Transform.translate(
              offset: Offset(-20,0),
              child: Image.asset
                ('assets/img/logo-white 3.png'),
            ),

          ],
        ),
      ),

    ];
    return SafeArea(
      child: Scaffold(
        body: GestureDetector(
          onHorizontalDragEnd: (dragEndDetails) {
            if (dragEndDetails.primaryVelocity! < 0) {
              // Page forwards
              _goForward();
            } else if (dragEndDetails.primaryVelocity! > 0) {
              // Page backwards
              _goBack();
            }
          },
          child: Container(
            height: height,
            width: width,
            child: Stack(
              children: [
                CustomBackground(backgroundColor: currentIndex == 0 ?Color(0XFFD9E6E9):(currentIndex == 1 ?Color(0XFFFFF7D0): Color(0XFFFEECDA) ),
                  imageColor: currentIndex == 0 ?Color(0XFF79BAA4):(currentIndex == 1 ?Color(0XFFF7D864): Color(0XFFF5B26D)),
                      image2Color:currentIndex == 0 ?Color(0XFF437F77):(currentIndex == 1 ?Color(0XFFBE9E3E): Color(0XFFBF7E3B)),
                ),
                Positioned(
                  top: 0,
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: PageView.builder(
                      controller: _pageController,
                      itemCount: _pagesList.length,
                      physics: NeverScrollableScrollPhysics(),
                      onPageChanged: onChangedFunction,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          child: _pagesList[currentIndex],
                        );
                      },
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: SizedBox(
                      height: 30,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: _pagesList.length,
                          itemBuilder: (context, i) {
                            return Container(
                              width: 8.0,
                              height: 8.0,
                              margin: EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 2.0),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: currentIndex == i
                                    ? Color(0XFFFFFFFF)
                                    : Color(0XFFC4C4C4),
                              ),
                            );
                          }),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
