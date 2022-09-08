import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  DateTime selectedDate = DateTime.now();
  DateTime lastdate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: selectedDate,
        lastDate: selectedDate.add(Duration(days: 8)),
      initialEntryMode: DatePickerEntryMode.calendarOnly,

    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
        _selectDate(context);
      });
  }
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFFECECEC),
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 0),
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
          'Cart',
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
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 5,right: 20,left: 20),
                    child: Row(
                      children: [
                        Container(
                          constraints: BoxConstraints(maxWidth: width/1.5),
                          child: Text('Select Delivery Date Wednesday, 01 Dec 2021',style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0XFF4A4A4A)),),
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: (){
                            _selectDate(context);
                          },
                          child: Icon(Icons.calendar_today_outlined,size: 22, color: Color(0XFF1BBC9B),
                          ),
                        )
                      ],
                    ),),
                    SizedBox(height: 20,),
                    Container(
                      height: 110,
                      width: width,
                      decoration: BoxDecoration(
                        color: Color(0XFFFAFAFA)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 70,
                              width: 80,
                              decoration: BoxDecoration(
                                color: Color(0XFFFFFFFF),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black
                                          .withOpacity(0.1),
                                      offset: Offset(0.0, 2),
                                      spreadRadius: 2.0,
                                      blurRadius: 2.0)
                                ],
                                border: Border.all(color:Color(0XFFE2E2E2) ),
                                borderRadius: BorderRadius.circular(20)
                              ),
                              child: Image.asset('assets/img/MGdining1006419 565.png'),
                            ),
                            Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Vrindavan Natural Cow Milk',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Color(0XFF2B2B2B),
                                      fontSize: 12),
                                ),
                                SizedBox(height: 3,),
                                Text(
                                  '500ml',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      color: Color(0XFF595959),
                                      fontSize: 12),
                                ),
                                SizedBox(height: 5,),

                                Text(
                                  '₹31.0',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Color(0XFF595959),
                                      fontSize: 18),
                                ),
                              ],
                            ),
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
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 180,
              width: width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  )),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Subtotal',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color(0XFF5A5A5A)),
                        ),
                        Spacer(),
                        Text('₹31.0', style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0XFFA1A1A1)),)
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Text(
                          'Delivery charge',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color(0XFF5A5A5A)),
                        ),
                        Spacer(),
                        Text('Free', style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0XFFA1A1A1)),)
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Text(
                          'Total',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color(0XFF5A5A5A)),
                        ),
                        Spacer(),
                        Text('₹31.0', style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0XFF262626)),)
                      ],
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        width: width,
                        decoration: BoxDecoration(
                            color: Color(0XFF437F77),
                            borderRadius: BorderRadius.circular(30)),
                        child: Center(
                          child: Text(
                            "Checkout",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Color(0XFFFFFFFF)),
                          ),
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
