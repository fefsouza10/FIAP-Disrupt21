import 'dart:math';
import 'dart:ui';
import 'package:MPSP/config/Palette.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/rendering.dart';

///quem mexer depois lembrar em não alterar nada nesta pagina

class BackgroundPainter extends CustomPainter {
  BackgroundPainter({Animation<double> animation})
      : redPaint = Paint()
          ..color = Palette.vermelhompsp
          ..style = PaintingStyle.fill,
        red2Paint = Paint()
          ..color = Palette.vermelhompsp2
          ..style = PaintingStyle.fill,
        bluePaint = Paint()
          ..color = Palette.azulmpsp
          ..style = PaintingStyle.fill,
        whitePaint = Paint()
          ..color = Palette.brancompsp
          ..style = PaintingStyle.fill,
        liquidAnim = CurvedAnimation(
          curve: Curves.elasticOut,
          reverseCurve: Curves.easeInBack,
          parent: animation,
        ),
        redAnim = CurvedAnimation(
          parent: animation,
          curve: const Interval(
            0,
            0.7,
            curve: Interval(0, 0.8, curve: SpringCurve()),
          ),
          reverseCurve: Curves.linear,
        ),
        red2Anim = CurvedAnimation(
          parent: animation,
          curve: const Interval(
            0,
            0.8,
            curve: Interval(0, 0.9, curve: SpringCurve()),
          ),
          reverseCurve: Curves.easeInCirc,
        ),
        whiteAnim = CurvedAnimation(
          parent: animation,
          curve: const SpringCurve(),
          reverseCurve: Curves.easeInCirc,
        ),
        blueAnim = CurvedAnimation(
          parent: animation,
          curve: const Interval(
            0,
            0.7,
            curve: Interval(0, 0.8, curve: SpringCurve()),
          ),
          reverseCurve: Curves.linear,
        ),
        super(repaint: animation);

  final Animation<double> liquidAnim;
  final Animation<double> redAnim;
  final Animation<double> red2Anim;
  final Animation<double> whiteAnim;
  final Animation<double> blueAnim;

  final Paint redPaint;
  final Paint red2Paint;
  final Paint bluePaint;
  final Paint whitePaint;

  @override
  void paint(Canvas canvas, Size size) {
    print(size);
    paintRed(canvas, size);
    paintRed2(canvas, size);
    paintWhite(canvas, size);
    //paintBlue(canvas, size);
  }

  void paintRed(Canvas canvas, Size size) {
    final path = Path();
    path.moveTo(size.width, size.height / 2);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    path.lineTo(
      0,
      lerpDouble(0, size.height, redAnim.value),
    );
    _pointsOfPath(path, [
      Point(
        lerpDouble(0, size.width / 3, liquidAnim.value),
        lerpDouble(0, size.height, liquidAnim.value),
      ),
      Point(
        lerpDouble(size.width / 2, size.width / 4 * 3, liquidAnim.value),
        lerpDouble(size.height / 2, size.height / 4 * 3, liquidAnim.value),
      ),
      Point(
        size.width,
        lerpDouble(size.height / 2, size.height * 3 / 4, liquidAnim.value),
      ),
    ]);
    //path.quadraticBezierTo(size.width / 2, 0, size.width, size.height / 2);
    //path.close();

    canvas.drawPath(path, redPaint);
  }

  void paintRed2(Canvas canvas, Size size) {
    final path = Path();
    path.moveTo(size.width, size.height / 300);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    path.lineTo(
      0,
      lerpDouble(size.height / 4, size.height / 2, red2Anim.value),
    );
    _pointsOfPath(
      path,
      [
        Point(
          size.width / 4,
          lerpDouble(size.height / 2, size.height * 3 / 4, liquidAnim.value),
        ),
        Point(
          size.width * 3 / 5,
          lerpDouble(size.height / 4, size.height / 2, liquidAnim.value),
        ),
        Point(
          size.width * 7 / 7,
          lerpDouble(size.height / 8, size.height / 4, red2Anim.value),
        ),
      ],
    );

    canvas.drawPath(path, red2Paint);
  }

  void paintWhite(Canvas canvas, Size size) {
    if (whiteAnim.value > 0) {
      final path = Path();

      path.moveTo(size.width * 2 / 4, 0);
      path.lineTo(0, 0);
      path.lineTo(
        0,
        lerpDouble(0, size.height / 12, whiteAnim.value),
      );
      _pointsOfPath(path, [
        Point(
          size.width / 7,
          lerpDouble(0, size.height / 6, liquidAnim.value),
        ),
        Point(
          size.width / 3,
          lerpDouble(0, size.height / 10, liquidAnim.value),
        ),
        Point(
          size.width / 3 * 2,
          lerpDouble(0, size.height / 8, liquidAnim.value),
        ),
        Point(
          size.width * 3 / 4,
          0,
        ),
      ]);
      //path.quadraticBezierTo(size.width / 2, 0, size.width, size.height / 2);
      //path.close();

      canvas.drawPath(path, whitePaint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

  void _pointsOfPath(Path path, List<Point> points) {
    if (points.length < 3) {
      throw UnsupportedError("Precisa de 2 pontos");
    }

    for (var i = 0; i < points.length - 2; i++) {
      final xc = (points[i].x + points[i + 1].x) / 2;
      final yc = (points[i].y + points[i + 1].y) / 2;
      path.quadraticBezierTo(points[i].x, points[i].y, xc, yc);
    }

    //conecte os 2 pontos
    path.quadraticBezierTo(
        points[points.length - 2].x,
        points[points.length - 2].y,
        points[points.length - 1].x,
        points[points.length - 1].y);
  }
}

class Point {
  final double x;
  final double y;

  Point(this.x, this.y);
}

///custom da curva
class SpringCurve extends Curve {
  const SpringCurve({
    this.a = 0.15,
    this.w = 19.4,
  });
  final double a;
  final double w;

  @override
  double transformInternal(double t) {
    return (-(pow(e, -t / a) * cos(t * w)) + 1).toDouble();
  }
}
