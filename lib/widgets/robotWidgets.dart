import 'package:flutter/material.dart';

class RobotIconContainer extends StatelessWidget {
  static const double boxSize = 85;

  RobotIconContainer(this.img);

  final String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              spreadRadius: 0.5,
              blurRadius: 10,
              offset: Offset(0, 5),
            )
          ],
          image: DecorationImage(
            image: AssetImage('$img'),
          )),
      width: boxSize,
      height: boxSize,
    );
  }
}
