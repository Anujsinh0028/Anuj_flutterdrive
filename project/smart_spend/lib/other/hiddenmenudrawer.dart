import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:smart_spend/analysis/graph.dart';
import 'package:smart_spend/home.dart';
import 'package:smart_spend/intro.dart';

class hiddenmenudrawer extends StatefulWidget {
  const hiddenmenudrawer({super.key});

  @override
  State<hiddenmenudrawer> createState() => _hiddenmenudrawerState();
}

class _hiddenmenudrawerState extends State<hiddenmenudrawer> {
  List <ScreenHiddenDrawer> _pages = [];

  @override
  void initState() {
    super.initState();

    _pages = [
      ScreenHiddenDrawer(ItemHiddenMenu(
       name: 'Name',
       baseStyle: TextStyle(),
       selectedStyle: TextStyle()),
       intropage(),
       ),

       ScreenHiddenDrawer(ItemHiddenMenu(
       name: 'About',
       baseStyle: TextStyle(),
       selectedStyle: TextStyle()),
       home(),
       ),

       ScreenHiddenDrawer(ItemHiddenMenu(
       name: 'analysis',
       baseStyle: TextStyle(),
       selectedStyle: TextStyle()),
       graph(),
       ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorMenu: Color.fromARGB(147, 66, 90, 245), 
      screens:_pages,
      initPositionSelected: 0,
      
    );
  }
}