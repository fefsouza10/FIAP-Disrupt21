import 'package:MPSP/bloc/navigation.bloc/navigation_bloc.dart';
import 'package:MPSP/screens/controller/screen_controller.dart';
import 'package:MPSP/views/institucional_view.dart';
import 'package:MPSP/views/area_view.dart';
import 'package:MPSP/views/cidadao_view.dart';
import 'package:MPSP/views/menu_view.dart';
import 'package:MPSP/views/services_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> with SingleTickerProviderStateMixin {
  bool isCollapsed = true;
  double screenWidth, screenHeight;
  final Duration duration = const Duration(milliseconds: 300);
  AnimationController _controller;
  Animation<double> _scaleAnimation;
  Animation<double> _menuAnimation;
  Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    _scaleAnimation = Tween<double>(begin: 1, end: 0.8).animate(_controller);
    _menuAnimation = Tween<double>(begin: 0, end: 1).animate(_controller);
    _slideAnimation = Tween<Offset>(begin: Offset(-1, 0), end: Offset(0, 0))
        .animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void onMenuTap() {
    setState(() {
      if (isCollapsed)
        _controller.forward();
      else
        _controller.reverse();
      isCollapsed = !isCollapsed;
    });
  }

  void onCloseMenuTap() {
    setState(() {
      _controller.reverse();
    });
    isCollapsed = !isCollapsed;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocProvider<NavigationBloc>(
        create: (context) => NavigationBloc(onMenuTap: onMenuTap),
        child: Stack(
          children: [
            BlocBuilder<NavigationBloc, NavigationStates>(
              builder: (context, NavigationStates navigationState) {
                return MenuController(
                  menuAnimation: _menuAnimation,
                  slideAnimation: _slideAnimation,
                  bottonColor: findSelectedIndex(navigationState),
                  onMenuCloseTap: onCloseMenuTap,
                );
              },
            ),
            ScreenController(
              duration: duration,
              onMenuTap: onMenuTap,
              scaleAnimation: _scaleAnimation,
              isCollapsed: isCollapsed,
              screenWidth: screenWidth,
              child: BlocBuilder<NavigationBloc, NavigationStates>(
                builder: (context, NavigationStates navigationState) {
                  return navigationState as Widget;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  int findSelectedIndex(NavigationStates navigationStates) {
    if (navigationStates is Institucional) {
      return 0;
    } else if (navigationStates is Area) {
      return 1;
    } else if (navigationStates is Cidadao) {
      return 2;
    } else if (navigationStates is Services) {
      return 3;
    } else {
      return 0;
    }
  }
}
