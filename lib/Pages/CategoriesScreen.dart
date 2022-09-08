import 'package:flutter/material.dart';
import 'package:vridavan/Pages/RiceScreen.dart';
import 'package:vridavan/Pages/Milk&DairyScreen.dart';
import 'package:vridavan/Pages/NutsScreen.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  List<dynamic> _categories = [
    {
      'title': 'Milk & Dairy',
      'image': 'assets/img/Untitled-5 1.png',
    },
    {
      'title': 'Colo Pressed Oils',
      'image': 'assets/img/Untitled-5 12.png',
    },
    {
      'title': 'Rice',
      'image': 'assets/img/Untitled-5 1 (1).png',
    },
    {
      'title': 'Pulses',
      'image': 'assets/img/01 3.png',
    },
    {
      'title': 'Millets',
      'image': 'assets/img/01 3 (1).png',
    },
    {
      'title': 'Flours',
      'image': 'assets/img/01 3 (2).png',
    },
    {
      'title': 'Jaggery & Sugar',
      'image': 'assets/img/01 3 (3).png',
    },
    {
      'title': 'Spices',
      'image': 'assets/img/01 3 (4).png',
    },
    {
      'title': 'Idli & Dosa Batter',
      'image': 'assets/img/01 3 (5).png',
    },
    {
      'title': 'Gardening',
      'image': 'assets/img/01 3 (8).png',
    },
    {
      'title': 'Health Drink',
      'image': 'assets/img/01 3 (6).png',
    },
    {
      'title': 'Nuts & Dry Fruits',
      'image': 'assets/img/01 3 (7).png',
    },
    {
      'title': 'Pooja Needs',
      'image': 'assets/img/01 c.png',
    },
    {
      'title': 'Greens',
      'image': 'assets/img/01 c1.png',
    },
    {
      'title': 'Personal Care',
      'image': 'assets/img/01 c2.png',
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
        leading: Padding(
          padding: const EdgeInsets.only(left: 0),
          child: IconButton
            (
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
          'Categories',
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
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: GridView.builder(
                  itemCount: _categories.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.all(5),
                  gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 0,
                      childAspectRatio: 1,
                      mainAxisSpacing: 10),
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      //onTap: () {
                        // Navigator.push(context,  MaterialPageRoute(
                        //     builder: (context) =>  ProductDetailsScreen())
                        // );
                      //},
                      onTap: () {
                        if(index==0){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      MilkDairy()));
                        }
                        else if(index==2){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      RiceScreen()));
                        }
                        else if (index==4){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      NutsScreen()));   
                        }
                      },
                      child: Container(
                        // height: 200,
                        child: Column(
                          children: [
                            Container(
                              width: 60,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Center(
                                  child: Image.asset(
                                    _categories[index]["image"],
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.only(top: 5),
                              child: Container(
                                // height: 50,
                                //   constraints: BoxConstraints(
                                //       maxWidth: 95),
                                  child: Text(
                                    _categories[index]["title"],
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0XFF000000),
                                    ),
                                    textAlign: TextAlign.center,
                                  )),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),

          ],
        )
      ),
    );  }
}
