import 'package:MPSP/config/palette.dart';
import 'package:MPSP/views/avaliacao_view.dart';
import 'package:MPSP/views/promotor_view.dart';
import 'package:MPSP/views/search_view.dart';
import 'package:flutter/material.dart';

class ChatHead extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ChatHeadState();
}

class _ChatHeadState extends State<ChatHead> with TickerProviderStateMixin {
  final GlobalKey _bottomKey = GlobalKey();
  bool isOpened = false;
  AnimationController _animationController;
  Animation<double> _translateButton;
  Curve _curve = Curves.easeOut;

  Size bottomSize;
  Offset bottomLocation = Offset(0, 400);

  void getBottomSize() {
    RenderBox _bottomBox = _bottomKey.currentContext.findRenderObject();
    bottomSize = _bottomBox.size;
  }

  void onDragUpdate(BuildContext context, DragUpdateDetails details) {
    ///Localização de gesto
    final RenderBox box = context.findRenderObject();
    final Offset offset = box.globalToLocal(details.globalPosition);

    ///Area de tela
    final double startX = 0;
    final double endX = context.size.width - bottomSize.width;

    final double startY = MediaQuery.of(context).padding.top;
    final double endY = context.size.height - bottomSize.height;

    ///Certifique-se de que o widget esteja sempre dentro da área da tela
    if (startX < offset.dx &&
        offset.dx < endX &&
        startY < offset.dy &&
        offset.dy < endY) {
      ///atualizando localização
      setState(() {
        bottomLocation = Offset(offset.dx, offset.dy);
      });
    }
  }

  void onDragEnd(BuildContext context, DragEndDetails details) {
    ///Certifique-se de que o widget estará localizado do lado esquerdo ou direito

    ///Última localização: bottomLocation
    final double pointX = context.size.width / 2;

    if (bottomLocation.dx + bottomSize.width / 2 < pointX) {
      setState(() {
        bottomLocation = Offset(0, bottomLocation.dy);
      });
    } else {
      setState(() {
        bottomLocation =
            Offset(context.size.width - bottomSize.width, bottomLocation.dy);
      });
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async => getBottomSize());
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 400))
          ..addListener(() {
            setState(() {});
          });
    _translateButton = Tween<double>(begin: 56, end: -14.0).animate(
        CurvedAnimation(
            parent: _animationController,
            curve: Interval(0.0, 0.75, curve: _curve)));
  }

  @override
  void dispose() {
    super.dispose();
  }

  Widget buttonBusca() {
    return FloatingActionButton(
      backgroundColor: Palette.vermelhompsp,
      heroTag: "1",
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => SearchPage(),
          ),
        );
      },
      tooltip: "Busca",
      child: Icon(
        Icons.search,
        color: Palette.brancompsp,
      ),
    );
  }

  Widget buttonStar() {
    return FloatingActionButton(
      backgroundColor: Palette.vermelhompsp,
      heroTag: "2",
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => Avaliacao(),
          ),
        );
      },
      tooltip: "Avaliação",
      child: Icon(
        Icons.star,
        color: Palette.brancompsp,
      ),
    );
  }

  Widget buttonFAQ() {
    return FloatingActionButton(
      backgroundColor: Palette.vermelhompsp,
      foregroundColor: Colors.white,
      heroTag: "3",
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => Promotor(),
          ),
        );
      },
      tooltip: "FAQ",
      child: Icon(Icons.supervised_user_circle),
    );
  }

  Widget buttonMenu() {
    return Stack(
      children: [
        Column(
          children: [
            Transform(
              transform: Matrix4.translationValues(
                  0.0, _translateButton.value * 4, 0.0),
            ),
            Transform(
              transform: Matrix4.translationValues(
                  0.0, _translateButton.value * 3, 0.0),
              child: buttonStar(),
            ),
            Transform(
              transform: Matrix4.translationValues(
                  0.0, _translateButton.value * 2, 0.0),
              child: buttonFAQ(),
            ),
            Transform(
              transform:
                  Matrix4.translationValues(0.0, _translateButton.value, 0.0),
              child: buttonBusca(),
            ),
            FloatingActionButton(
                backgroundColor: Palette.brancompsp,
                key: _bottomKey,
                onPressed: animate,
                tooltip: "Menu",
                child: Icon(Icons.person_search_rounded)),
          ],
        ),
      ],
    );
  }

  animate() {
    if (!isOpened)
      _animationController.forward();
    else
      _animationController.reverse();
    isOpened = !isOpened;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragUpdate: (DragUpdateDetails details) =>
          onDragUpdate(context, details),
      onHorizontalDragUpdate: (DragUpdateDetails details) =>
          onDragUpdate(context, details),
      onVerticalDragEnd: (DragEndDetails details) =>
          onDragEnd(context, details),
      onHorizontalDragEnd: (DragEndDetails details) =>
          onDragEnd(context, details),
      child: Stack(
        children: [
          Positioned(
            child: buttonMenu(),
            left: bottomLocation.dx,
            top: bottomLocation.dy,
          )
        ],
      ),
    );
  }
}
