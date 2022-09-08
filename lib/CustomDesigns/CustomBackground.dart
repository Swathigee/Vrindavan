import 'package:flutter/material.dart';

class CustomBackground extends StatelessWidget {
  CustomBackground({required this.backgroundColor, required this.imageColor, required this.image2Color});
  final Color backgroundColor;
  final Color imageColor;
  final Color image2Color;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: backgroundColor,
        ),
        Positioned(
            bottom: -60,
            child: Image.asset(
              'assets/img/BG design1.png',color: imageColor,
              width: MediaQuery.of(context).size.width,
            )),
        Positioned(bottom: 0, child: Image.asset('assets/img/BG design2.png',color: image2Color,
          width: MediaQuery.of(context).size.width,
        )),
      ],
    );
      // Column(
      //   children: [
      //     Row(
      //       children: [
      //         Image.asset(
      //           "assets/image/topDesign.png",
      //           height: 150,
      //           width: 150,
      //           color: imageColor,
      //         ),
      //       ],
      //     ),
      //     Row(
      //       crossAxisAlignment: CrossAxisAlignment.end,
      //       mainAxisAlignment: MainAxisAlignment.end,
      //       children: [
      //         Image.asset(
      //           "assets/image/bottomDesign.png",
      //           height: 150,
      //           width: 150,
      //           color: imageColor,
      //         ),
      //       ],
      //     )
      //   ],
      // ),
    // );
  }
}
