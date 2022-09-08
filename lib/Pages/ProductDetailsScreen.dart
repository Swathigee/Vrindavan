import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vridavan/Pages/AddSubscription.dart';
import 'package:vridavan/Pages/CartScreen.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  _ProductDetailsScreenState createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  List<dynamic> _list2 = [
    {
      'title': 'Malnad A2 Desi Cow Milk',
      'image': 'assets/img/MGdining1006419 5.png',
      'size': '500ml',
      'price': '₹43.0',
    },
    {
      'title': 'Indus A2 Desi Cow Milk',
      'image': 'assets/img/MGdining1006419 6.png',
      'size': '500ml',
      'price': '₹43.0',
    },
    {
      'title': 'Vrindvan Buffalo Milk',
      'image': 'assets/img/MGdining1006419 6 (1).png',
      'size': '500ml',
      'price': '₹44.0',
    },
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFFECECEC),
        elevation: 3,
        shadowColor: Colors.black.withOpacity(0.5),
        // leadingWidth: 20,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
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
          'Vrindavan Natural Cow Milk',
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: Color(0XFF464646)),
        ),
        centerTitle: false,
      ),
      body: Container(
        color: Color(0XFFECECEC),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Container(
                            height: 180,
                            width: width,
                            decoration: BoxDecoration(
                              boxShadow: [
                                // BoxShadow(
                                //     color: Colors.black
                                //         .withOpacity(0.1),
                                //     offset: Offset(0.0, 2),
                                //     spreadRadius: 2.0,
                                //     blurRadius: 2.0)
                              ],
                              border: Border.all(color: Color(0XFFD8D8D8)),
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Image.asset(
                              'assets/img/related-a1-milk 1.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Vrindavan Natural Cow Milk',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Color(0XFF2B2B2B),
                                          fontSize: 18),
                                    ),
                                    Spacer(),
                                    Text(
                                      '₹31.0',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          color: Color(0XFF2B2B2B),
                                          fontSize: 20),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  '500ml',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                      color: Color(0XFF8F8888)),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'Highlights',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0XFF484747)),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  'Natural Cow Milk',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0XFF484747)),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Vrindavan Farms Organic Cow Milk is produced from cows that are grazed naturally. We feed cows with naturally grown green fodders such as Maize, Jowar, and Nappier Grass. We also feed dry fodder such as paddy and raagi straw. In addition to fooder, we also feed naturally formulated cattle feed along with oil cakes. Cows are maintained hygienically. We wash cows regularly and make sure they live in a clean environment. Cows are periodically monitored by a veterinary doctor. Cows are given the periodic vaccine to protect from regular diseases such as FMD. We don't use growth hormone injections to increase milk production. We also don't use antibiotic-treated cows milk until the suggested withdrawal period is over. Our milk is pure and natural.",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.normal,
                                      color: Color(0XFF626262),
                                      height: 1.5),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'ORGANIC COW MILK',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0XFF484747)),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text.rich(TextSpan(children: [
                                  TextSpan(
                                      text: 'COWS: ',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0XFF626262))),
                                  TextSpan(
                                      text: 'HYBRID Cows',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.normal,
                                          color: Color(0XFF626262))),
                                ])),
                                SizedBox(
                                  height: 10,
                                ),
                                Text.rich(TextSpan(children: [
                                  TextSpan(
                                      text: 'VARIANT: ',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0XFF626262))),
                                  TextSpan(
                                      text: 'FULL CREAM RAW MILK',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.normal,
                                          color: Color(0XFF626262))),
                                ])),
                                SizedBox(
                                  height: 10,
                                ),
                                Text.rich(TextSpan(children: [
                                  TextSpan(
                                      text: 'QUALITY: ',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0XFF626262))),
                                  TextSpan(
                                      text: "FAT: 3.8%, SNF: 8.0 (approx.)",
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.normal,
                                          color: Color(0XFF626262))),
                                ])),
                                SizedBox(
                                  height: 10,
                                ),
                                Text.rich(TextSpan(children: [
                                  TextSpan(
                                      text: 'PACKAGING: ',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0XFF626262))),
                                  TextSpan(
                                      text: '500ML POUCH, 1000ML GLASS BOTTLE',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.normal,
                                          color: Color(0XFF626262))),
                                ])),
                                SizedBox(
                                  height: 10,
                                ),
                                Text.rich(TextSpan(children: [
                                  TextSpan(
                                      text: 'AHELF LIFE: ',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0XFF626262))),
                                  TextSpan(
                                      text: '4 DAYS, WHEN STORED UNDER 4°C',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.normal,
                                          color: Color(0XFF626262))),
                                ])),
                                SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  'Similar Products',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0XFF484747)),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 0, right: 0),
                      child: Container(
                        height: 170,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.zero,
                          itemBuilder: (context, index) {

                            return GestureDetector(
                                onTap: () {},
                                child: Container(
                                  height: 160,
                                  // width: 130,
                                  margin: EdgeInsets.only(bottom: 10,left: 20,right: index == _list2.length-1 ? 20 : 0),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.black.withOpacity(0.1),
                                            offset: Offset(0.0, 2),
                                            spreadRadius: 2.0,
                                            blurRadius: 2.0)
                                      ],
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Center(
                                          child: Image.asset(
                                            _list2[index]['image'],
                                            // height: 130,
                                            // width: 130,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      // Container(
                                      //   height: 40,
                                      //   child:
                                      Padding(
                                          padding: const EdgeInsets.all(6.0),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  _list2[index]['title'],
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      fontWeight: FontWeight.w600,
                                                      color: Color(0XFF2B2B2B)),
                                                ),
                                                SizedBox(height: 3,),
                                                Text(
                                                  _list2[index]['size'],
                                                  style: TextStyle(
                                                      fontSize: 8,
                                                      fontWeight: FontWeight.normal,
                                                      color: Color(0XFF707070)),
                                                ),
                                                SizedBox(height: 5,),
                                                Text(
                                                  _list2[index]['price'],
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w600,
                                                    color: Color(0XFF363636),
                                                  ),
                                                ),
                                              ])),
                                    ],
                                  ),
                                ));
                          },
                          itemCount: _list2.length,
                          separatorBuilder: (context, index) {
                            return SizedBox(width: 0);
                          },
                        ),
                      ),
                    ),
                    SizedBox(height: 50,),
                  ],
                ),
              ),
            ),
            Container(
              height: 200,
              width: width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                )
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('Quantity',style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0XFF636363)),),
                        Spacer(),
                        Container(
                          height: 17,width: 17,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(width: 1.5,color: Color(0XFF1BBC9B),
                            )
                          ),
                          child: Center(
                            child: Icon(Icons.remove,size: 10,color: Color(0XFF1BBC9B)),
                          ),
                        ),
                        SizedBox(width: 5,),
                        Text('1.0',style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            color: Color(0XFF384B69)),),
                        SizedBox(width: 5,),
                        Container(
                          height: 17,width: 17,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(width: 1.5,color: Color(0XFF1BBC9B),
                            )
                          ),
                          child: Center(
                            child: Icon(Icons.add,size: 10,color: Color(0XFF1BBC9B)),
                          ),
                        ),

                      ],
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context,  MaterialPageRoute(
                            builder: (context) =>  CartScreen())
                        );
                      },
                      child: Container(
                        height: 50,
                        width: width,
                        decoration: BoxDecoration(
                          color: Color(0XFF437F77),
                          borderRadius: BorderRadius.circular(30)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20),
                          child:
                          Row(
                            children: [
                              Text('Add to Cart',style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                              color: Color(0XFFFFFFFF)),),
                              Spacer(),
                              Text('1 item',style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                              color: Color(0XFFFFFFFF)),),
                              Padding(
                                padding: const EdgeInsets.only(top: 10,bottom: 10),
                                child: VerticalDivider(color: Colors.white,),
                              ),
                              Text('₹31.0',style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0XFFFFFFFF)),),

                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context,  MaterialPageRoute(
                            builder: (context) =>  AddSubscriptionScreen())
                        );
                      },
                      child: Container(
                        height: 50,
                        width: width,
                        decoration: BoxDecoration(
                          color: Color(0XFF437F77),
                          borderRadius: BorderRadius.circular(30)
                        ),
                        child: Center(
                          child: Text("Add subscription",style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Color(0XFFFFFFFF)),),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
