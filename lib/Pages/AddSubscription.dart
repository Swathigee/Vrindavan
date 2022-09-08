import 'package:flutter/material.dart';

class AddSubscriptionScreen extends StatefulWidget {
  const AddSubscriptionScreen({Key? key}) : super(key: key);

  @override
  _AddSubscriptionScreenState createState() => _AddSubscriptionScreenState();
}

class _AddSubscriptionScreenState extends State<AddSubscriptionScreen> {
  List listOfDates = [];
  List schedule = [];
  var firstday;
  var pickedDateIndex;
  int currentIndex = 1;
  var scheduleOption = 2;

  late DateTime _firstDayOfTheweek;

  @override
  void initState() {
    main();
    super.initState();
  }

  void main() {
    // Take the input year, month number, and pass it inside DateTime()
    var now = DateTime.now();
    DateTime today = DateTime.now();
    final weekDay =  today.weekday == 7 ? 0 : today.weekday;
    _firstDayOfTheweek = today.subtract(Duration(days: weekDay));
    firstday = _firstDayOfTheweek.day;
    // Getting the total number of days of the month
    var totalDays = daysInMonth(now);
    var count = 21;
    var loopRun = 0;

    // Stroing all the dates till the last date
    // since we have found the last date using generate
    listOfDates = List<int>.generate(totalDays, (i) => i + 1);
    var currentMonthCount = listOfDates.length;
    for (var i = firstday; i <= listOfDates.length; i++) {
      var len = schedule.length;
      loopRun += 1;
      schedule.add(i);
      var newLoop = count - loopRun;
      if (len == 20) {
        break;
      } else if (currentMonthCount == i) {
        for (var j = 1; j <= newLoop; j++) {
          schedule.add(j);
        }
      }
    }
    pickedDateIndex = schedule.indexOf(today.day);
  }

  int daysInMonth(DateTime date) {
    var firstDayThisMonth = DateTime(date.year, date.month, date.weekday);
    var firstDayNextMonth = DateTime(firstDayThisMonth.year,
        firstDayThisMonth.month + 1, firstDayThisMonth.day);
    return firstDayNextMonth.difference(firstDayThisMonth).inDays;
  }
  List deliveryOption = [
    'Everyday',
    'Alternate day',
    'Every 3 day',
    'Every 7 day',
    'One time delivery',
    'Customize',
  ];

  List deliveryDays = [
    'Su',
    'Mo',
    'Tu',
    'We',
    'Th',
    'Fr',
    'Sa',
  ];

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
          'Add Subscription',
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: Color(0XFF464646)),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Color(0XFFECECEC),
        height: height,
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 110,
              width: width,
              decoration: BoxDecoration(color: Color(0XFFFAFAFA)),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 70,
                      width: 80,
                      decoration: BoxDecoration(
                          color: Color(0XFFFFFFFF),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                offset: Offset(0.0, 2),
                                spreadRadius: 2.0,
                                blurRadius: 2.0)
                          ],
                          border: Border.all(color: Color(0XFFE2E2E2)),
                          borderRadius: BorderRadius.circular(20)),
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
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          '500ml',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Color(0XFF595959),
                              fontSize: 12),
                        ),
                        SizedBox(
                          height: 5,
                        ),
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
                      height: 17,
                      width: 17,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                            width: 1.5,
                            color: Color(0XFF1BBC9B),
                          )),
                      child: Center(
                        child: Icon(Icons.remove,
                            size: 10, color: Color(0XFF1BBC9B)),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '1.0',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Color(0XFF384B69)),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 17,
                      width: 17,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                            width: 1.5,
                            color: Color(0XFF1BBC9B),
                          )),
                      child: Center(
                        child:
                            Icon(Icons.add, size: 10, color: Color(0XFF1BBC9B)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'When do you want to start subscription?',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: Color(0XFF2B2B2B)),
                      ),
                      Spacer(),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(color: Color(0XFF1BBC9B))),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(
                            children: [
                              Icon(Icons.calendar_today_outlined,
                                  size: 15, color: Color(0XFF1BBC9B)),
                              Text(
                                '01/12/2021',
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.normal,
                                    color: Color(0XFF515151)),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'How often do you want to receive this product?',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: Color(0XFF2B2B2B)),
                  ),
                  GridView.builder(
                      itemCount: deliveryOption.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.all(0),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 0,
                          childAspectRatio: 5,
                          mainAxisSpacing: 0),
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              currentIndex = index;
                              if (currentIndex == 0) {
                                scheduleOption = 1;
                              } else if (currentIndex == 1) {
                                scheduleOption = 2;
                              } else if (currentIndex == 2) {
                                scheduleOption = 3;
                              } else if (currentIndex == 3) {
                                scheduleOption = 7;
                              } else if (currentIndex == 4) {
                                scheduleOption = 21;
                              } else if (currentIndex == 5) {
                                scheduleOption = 21;
                              }
                              print('${deliveryOption[index]}');
                            });
                          },
                          child: Container(
                            // height: 200,
                            child: Row(
                              children: [
                                Container(
                                  height: 15,
                                  width: 15,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      border:
                                          Border.all(color: Color(0XFF1BBC9B))),
                                  child: Visibility(
                                    visible: currentIndex == index,
                                    child: Center(
                                      child: Container(
                                        height: 8,
                                        width: 8,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            color: Color(0XFF1BBC9B)),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  deliveryOption[index],
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                      color: Color(0XFF2B2B2B)),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Image.asset(
                          'assets/img/ic_outline-access-time-filled.png'),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Schedule Preview',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0XFF252525)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GridView.builder(
                      itemCount: deliveryDays.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.all(0),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 7,
                          crossAxisSpacing: 15,
                          childAspectRatio: 1,
                          mainAxisSpacing: 0),
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {},
                          child: Container(
                            // height: 200,
                            child: Row(
                              children: [
                                Text(
                                  deliveryDays[index],
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0XFF838383)),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                  Divider(
                    color: Color(0XFF000000),
                  ),
                  GridView.builder(
                      itemCount: schedule.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.all(0),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 7,
                          crossAxisSpacing: 10,
                          childAspectRatio: 1,
                          mainAxisSpacing: 10),
                      itemBuilder: (BuildContext context, int index) {
                        var result = index % scheduleOption;
                        var isEven = pickedDateIndex % scheduleOption;
                        getColor(index) {
                          if (index < pickedDateIndex) {
                            return Color(0XFFECECEC);
                          } else if (result == isEven) {
                            return Color(0XFF437F77);
                          } else {
                            return Color(0XFFECECEC);
                          }
                        }

                        ;
                        getColor1(index) {
                          if (index < pickedDateIndex) {
                            return Color(0XFFC9C9C9);
                          } else if (result == isEven) {
                            return Colors.white;
                          } else {
                            return Color(0XFF838383);
                          }
                        }

                        ;

                        return GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 10,
                            width: 10,
                            color: getColor(index),
                            child: Center(
                              child: Text(
                                schedule[index].toString().padLeft(2, "0"),
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: getColor1(index)),
                              ),
                            ),
                          ),
                        );
                      }),
                  Divider(
                    color: Color(0XFF000000),
                  ),
                ],
              ),
            ),
            Spacer(),
            Center(
              child: Container(
                width: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                ),
                // ignore: deprecated_member_use
                child: MaterialButton(
                  onPressed: () {
                    // Navigator.push(context,  MaterialPageRoute(
                    //     builder: (context) =>  CategoriesScreen())
                    // );
                  },
                  padding: EdgeInsets.symmetric(vertical: 15),
                  color: Color(0XFF437F77),
                  shape: StadiumBorder(),
                  child: Center(
                      child: Text(
                    'Subscribe',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: Colors.white),
                  )),
                ),
              ),
            ),
            SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
