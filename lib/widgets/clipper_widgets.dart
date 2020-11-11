import 'package:flutter/material.dart';

class ClipperRow extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(size.width, 0);
    var points = Offset(size.width, 100);
    var endPoints = Offset(size.width, size.height / 1.5);
    path.quadraticBezierTo(points.dx, points.dy, endPoints.dx, endPoints.dy);
    path.lineTo(size.width / 59, size.height);
    //path.lineTo(0, size.height);
    // path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class ClipperRow2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(size.width, size.height / size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width / size.width, size.height - 100);
    path.lineTo(size.width / size.width, size.height - 200);
    path.moveTo(size.width, size.height / size.height);

    // path.lineTo(0, size.height);
    // path.lineTo(size.width, 230);
    // path.lineTo(0, size.height / 1.52);

    // //path.lineTo(size.width, size.height);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
