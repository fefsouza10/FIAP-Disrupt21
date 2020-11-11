import 'package:MPSP/bloc/navigation.bloc/navigation_bloc.dart';
import 'package:MPSP/config/palette.dart';
import 'package:MPSP/screens/buttons/chathead.button.dart';
import 'package:MPSP/widgets/mp_widgets.dart';
import 'package:MPSP/widgets/faleconosco_widgets.dart';
import 'package:flutter/material.dart';
import 'package:MPSP/widgets/cartilhas_widgets.dart';

class Cidadao extends StatelessWidget with NavigationStates {
  final Function onMenuTap;

  Cidadao({Key key, this.onMenuTap}) : super(key: key);
  static const double boxSize = 70;
  static const double spaceIconToTitle = 5;
  static const double spaceTitleToIcon = 10;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        DefaultTabController(
          length: 3,
          child: Scaffold(
            body: Column(
              children: [
                Container(
                  color: Palette.vermelhompsp,
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  color: Palette.vermelhompsp,
                  height: 80,
                  width: width,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            InkWell(
                              child: GestureDetector(
                                onTap: onMenuTap,
                                child: Container(
                                  child: Icon(
                                    Icons.menu,
                                    color: Palette.brancompsp,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              "Cidadão",
                              style: TextStyle(
                                  fontSize: 24,
                                  color: Palette.brancompsp,
                                  fontFamily: "Montserrat"),
                            ),
                            Container()
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Palette.vermelhompsp,
                  child: TabBar(
                      labelColor: Palette.vermelhompsp,
                      unselectedLabelColor: Palette.brancompsp,
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicator: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                          color: Palette.brancompsp),
                      tabs: [
                        Tab(
                          icon: Icon(Icons.article),
                          text: 'Cartilhas',
                        ),
                        Tab(
                          icon: Icon(Icons.badge),
                          text: 'Conheça o MP',
                        ),
                        Tab(
                          icon: Icon(Icons.contact_phone),
                          text: 'Fale Conosco',
                        ),
                      ]),
                ),
                Flexible(
                  child: TabBarView(
                    children: [CartilhasPage(), MPPage(), FaleConoscoPage()],
                  ),
                ),
              ],
            ),
          ),
        ),
        ChatHead(),
      ],
    );
  }
}
