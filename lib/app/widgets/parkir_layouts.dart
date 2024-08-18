import 'package:flutter/widgets.dart';

class parkir_layout extends StatelessWidget {
  const parkir_layout({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
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
              Column(
                children: [
                  Image.asset("assets/icon/bluecar.png",
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
