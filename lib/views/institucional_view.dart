import 'package:MPSP/bloc/navigation.bloc/navigation_bloc.dart';
import 'package:MPSP/config/palette.dart';
import 'package:MPSP/screens/buttons/chathead.button.dart';
import 'package:MPSP/screens/noticias_slide.dart';
import 'package:MPSP/widgets/scrollCard_widgets.dart';

import 'package:flutter/material.dart';

class Institucional extends StatelessWidget with NavigationStates {
  final Function onMenuTap;
  const Institucional({Key key, this.onMenuTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    double width = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        Container(
          height: size.height,
          width: size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
                            "Ministério Público SP",
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
              SizedBox(
                height: 20,
              ),
              BannerMulher(),
              SizedBox(
                height: 20,
              ),
              Scroll(),
            ],
          ),
        ),
        ChatHead()
      ],
    );
  }
}
