import 'package:ez_parky/app/data/const/colors.dart';
import 'package:ez_parky/app/data/const/fonts.dart';
import 'package:flutter/material.dart';

class choose_slot_layouts extends StatelessWidget {
  const choose_slot_layouts({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
     final height =
        MediaQuery.of(context).size.height - AppBar().preferredSize.height;
    final width = MediaQuery.of(context).size.width;
    return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
      EdgeInsets.only(left: width * 0.11, right: width * 0.19),
              child: Column(
    children: [
      Column(
        children: [
          Image.asset("assets/icon/redcar.png",
              width: width * 0.09),
          Text("A11"),
        ],
      ),
      Column(
        children: [
          Image.asset("assets/icon/redcar.png",
              width: width * 0.09),
          Text("A12"),
        ],
      ),
      Column(
        children: [
          Image.asset("assets/icon/redcar.png",
              width: width * 0.09),
          Text("A13"),
        ],
      ),
      Column(
        children: [
          Image.asset("assets/icon/redcar.png",
              width: width * 0.09),
          Text("A14"),
        ],
      ),
      Column(
        children: [
          Image.asset("assets/icon/redcar.png",
              width: width * 0.09),
          Text("A15"),
        ],
      ),
      Column(
        children: [
          Image.asset("assets/icon/redcar.png",
              width: width * 0.09),
          Text("A16"),
        ],
      ),
      Column(
        children: [
          Image.asset("assets/icon/greencar.png",
              width: width * 0.09),
          Text("A17"),
        ],
      ),
    ],
              ),
            ),
            Column(
              children: [
    Column(
      children: [
        Image.asset("assets/icon/redcar.png",
            width: width * 0.09),
        Text("A21"),
      ],
    ),
    Column(
      children: [
        Image.asset("assets/icon/redcar.png",
            width: width * 0.09),
        Text("A22"),
      ],
    ),
    Column(
      children: [
        Image.asset("assets/icon/greencar.png",
            width: width * 0.09),
        Text("A23"),
      ],
    ),
    Column(
      children: [
        Image.asset("assets/icon/redcar.png",
            width: width * 0.09),
        Text("A24"),
      ],
    ),
    Column(
      children: [
        Image.asset("assets/icon/redcar.png",
            width: width * 0.09),
        Text("A25"),
      ],
    ),
    Column(
      children: [
        Image.asset("assets/icon/redcar.png",
            width: width * 0.09),
        Text("A26"),
      ],
    ),
              ],
            ),
            Padding(
              padding:
      EdgeInsets.only(left: width * 0.05, right: width * 0.19),
              child: Column(
    children: [
      Column(
        children: [
          Image.asset("assets/icon/redcar.png",
              width: width * 0.09),
          Text("B11"),
        ],
      ),
      Column(
        children: [
          Image.asset("assets/icon/redcar.png",
              width: width * 0.09),
          Text("B12"),
        ],
      ),
      Column(
        children: [
          Image.asset("assets/icon/redcar.png",
              width: width * 0.09),
          Text("A13"),
        ],
      ),
      Container(
        height: height * 0.075,
        width: width * 0.11,
        decoration: BoxDecoration(
          color: blueElement,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Image.asset("assets/icon/bluecar.png", color: Colors.white,
                width: width * 0.09),
            Text("B14", style: poppins.copyWith(color: Colors.white),),
          ],
        ),
      ),
      Column(
        children: [
          Image.asset("assets/icon/redcar.png",
              width: width * 0.09),
          Text("A15"),
        ],
      ),
      Column(
        children: [
          Image.asset("assets/icon/greencar.png",
              width: width * 0.09),
          Text("A16"),
        ],
      ),
    ],
              ),
            ),
            Column(
              children: [
    Column(
      children: [
        Image.asset("assets/icon/redcar.png",
            width: width * 0.09),
        Text("B21"),
      ],
    ),
    Column(
      children: [
        Image.asset("assets/icon/redcar.png",
            width: width * 0.09),
        Text("A22"),
      ],
    ),
    Column(
      children: [
        Image.asset("assets/icon/redcar.png",
            width: width * 0.09),
        Text("A23"),
      ],
    ),
    Column(
      children: [
        Image.asset("assets/icon/redcar.png",
            width: width * 0.09),
        Text("A24"),
      ],
    ),
    Column(
      children: [
        Image.asset("assets/icon/redcar.png",
            width: width * 0.09),
        Text("A25"),
      ],
    ),
    Column(
      children: [
        Image.asset("assets/icon/redcar.png",
            width: width * 0.09),
        Text("A26"),
      ],
    ),
    Column(
      children: [
        Image.asset("assets/icon/redcar.png",
            width: width * 0.09),
        Text("A27"),
      ],
    ),
              ],
            ),
          ],
        );
  }
}