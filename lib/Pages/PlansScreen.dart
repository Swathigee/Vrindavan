import 'package:flutter/material.dart';

import 'DashboardScreen.dart';

class PlansScreen extends StatefulWidget {
  const PlansScreen({Key? key}) : super(key: key);

  @override
  _PlansScreenState createState() => _PlansScreenState();
}

class _PlansScreenState extends State<PlansScreen> {
  bool plan = false;
  List<dynamic> Subscriptionlist=[
    {
      'Day':'EveryDay',
      'Name':'Vrindavan Natural Cow Milk',
      'Image':'assets/img/packet1.png',
      'Quantity':'500ml',
      'Cost':'₹31.0'
    },
    {
      'Day':'Alternative Day',
      'Name':'Black Rice - Karuppu Kavuni',
      'Image':'assets/img/blackrice.png',
      'Quantity':'500g',
      'Cost':'₹114.0'
    },
  ];
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
    return Scaffold(
      appBar: AppBar(
        shape: Border(bottom: BorderSide(color: Color(0XFF1BBC9B),width: 1)),
        shadowColor: Colors.black.withOpacity(0.5),
        backgroundColor: Color(0XFFECECEC),
        elevation: 4,
        automaticallyImplyLeading: false,
        title: Text(
          'My subscriptions',
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: Color(0XFF464646)),
        ),

        centerTitle: true,
      ),
      body: Container(
          color: Color(0XFFECECEC),
          height: double.infinity,
          width: double.infinity,
          child: plan == false ?
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Why Should | Subscribe?',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20,color: Color(0XFF515151)),),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Icon(Icons.check,color: Color(0XFF950E0E),size: 24,),
                    SizedBox(width: 10,),
                    Text('No tension',style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal,color: Color(0XFF8A8A8A)),),
                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  children: [
                    Icon(Icons.check,color: Color(0XFF950E0E),size: 24,),
                    SizedBox(width: 10,),
                    Text('Zero delivery fee',style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal,color: Color(0XFF8A8A8A)),),
                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  children: [
                    Icon(Icons.check,color: Color(0XFF950E0E),size: 24,),
                    SizedBox(width: 10,),
                    Text('Customizable delivery',style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal,color: Color(0XFF8A8A8A)),),
                  ],
                ),
                SizedBox(height: 50,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                  ),
                  // ignore: deprecated_member_use
                  child: MaterialButton(
                    onPressed: () {
                      setState(() {
                        plan = true;
                      });
                      // Navigator.push(context,  MaterialPageRoute(
                      //     builder: (context) =>  CategoriesScreen())
                      // );
                    },
                    padding: EdgeInsets.symmetric(vertical: 15),
                    color: Color(0XFF437F77),
                    shape: StadiumBorder(),
                    child: Center(child: Text('Search Products to Subscribe', style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: Colors.white),)),
                  ),
                ),


              ],
            ),
          ) :
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 50,),
                ListView.separated(
                  shrinkWrap: true,
                  itemCount: 2,
                  itemBuilder: (BuildContext context, index) {
                    return GestureDetector(
                      onTap: (){
                      },
                      child: Container(
                        height: 120,
                        width: width,
                        decoration: BoxDecoration(color: Color(0XFFF8F8F8)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Transform.translate(
                              offset: Offset(0, -20),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Color(0XFF437F77),
                                      borderRadius: BorderRadius.circular(25)),
                                  width: 140,
                                  height: 40,
                                  child: Center(
                                    child: Text(
                                      Subscriptionlist[index]['Day'],
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Color(0XFFFFFFFF),
                                          fontSize: 16),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 70,
                                    width: 90,
                                    decoration: BoxDecoration(
                                        color: Color(0XFFFFFFFF),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.black.withOpacity(0.1),
                                              offset: Offset(0.0, 3),
                                              spreadRadius: 1.0,
                                              blurRadius: 2.0)
                                        ],
                                        borderRadius: BorderRadius.circular(20)),
                                    child: Image.asset(Subscriptionlist[index]['Image']),
                                  ),
                                  SizedBox(width: 5,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        Subscriptionlist[index]['Name'],
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            color: Color(0XFF2B2B2B),
                                            fontSize: 12),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        Subscriptionlist[index]['Quantity'],
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            color: Color(0XFF2B2B2B),
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Text(
                                    Subscriptionlist[index]['Cost'],
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: Color(0XFF2B2B2B),
                                        fontSize: 18),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }, separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 50,
                  );
                },),
              ],
            ),
          ),
      ),
    );  }
}
