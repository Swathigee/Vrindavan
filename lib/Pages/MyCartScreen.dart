import 'package:flutter/material.dart';
import 'package:vridavan/Pages/CategoriesScreen.dart';

class MyCartScreen extends StatefulWidget {
  const MyCartScreen({Key? key}) : super(key: key);

  @override
  _MyCartScreenState createState() => _MyCartScreenState();
}

class _MyCartScreenState extends State<MyCartScreen> {
  @override
  Widget build(BuildContext context) {
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
            'My Cart',
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/img/notification 1 (1).png',height: 150,width: 150,),
              SizedBox(
                height: 10,
              ),
              Text(
                'NO items in your cart',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: Color(0XFF515151)),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Your favourite items are just a click away',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Color(0XFF787878)),
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
                        'Start Ordering',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: Colors.white),
                      )),
                ),
              ),
            ],
          ),
        ));
  }
}