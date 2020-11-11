import 'package:MPSP/bloc/navigation.bloc/navigation_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MenuController extends StatelessWidget {
  final Animation<double> menuAnimation;
  final Animation<Offset> slideAnimation;
  final int bottonColor;
  final Function onMenuCloseTap;
  const MenuController(
      {Key key,
      this.menuAnimation,
      this.slideAnimation,
      this.bottonColor,
      this.onMenuCloseTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: slideAnimation,
      child: ScaleTransition(
        scale: menuAnimation,
        child: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 240,
                    height: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/img/cidadao_mp/mp.jpg'))),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  GestureDetector(
                    onTap: () {
                      BlocProvider.of<NavigationBloc>(context)
                          .add(NavigationEvents.InstitucionalClickedEvent);
                      onMenuCloseTap();
                    },
                    child: Container(
                      child: Text(
                        "INSTITUCIONAL",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontFamily: "Montserrat",
                          fontWeight: bottonColor == 0
                              ? FontWeight.w900
                              : FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  GestureDetector(
                    onTap: () {
                      BlocProvider.of<NavigationBloc>(context)
                          .add(NavigationEvents.AreaClickedEvent);
                      onMenuCloseTap();
                    },
                    child: Container(
                      child: Text(
                        "ÁREAS DE ATUAÇÃO",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontFamily: "Montserrat",
                          fontWeight: bottonColor == 1
                              ? FontWeight.w900
                              : FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  GestureDetector(
                    onTap: () {
                      BlocProvider.of<NavigationBloc>(context)
                          .add(NavigationEvents.CidadaoClickedEvent);
                      onMenuCloseTap();
                    },
                    child: Container(
                      child: Text(
                        "CIDADÃO",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontFamily: "Montserrat",
                          fontWeight: bottonColor == 2
                              ? FontWeight.w900
                              : FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  GestureDetector(
                    onTap: () {
                      BlocProvider.of<NavigationBloc>(context)
                          .add(NavigationEvents.ServicesClickedEvents);
                      onMenuCloseTap();
                    },
                    child: Container(
                      child: Text(
                        "SERVIÇOS",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontFamily: "Montserrat",
                          fontWeight: bottonColor == 3
                              ? FontWeight.w900
                              : FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
