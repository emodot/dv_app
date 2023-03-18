import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends AppBar {
  CustomAppBar({super.key,})
      : super(
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          toolbarHeight: 100,
          elevation: 0,
          titleSpacing: 30,
          centerTitle: false,
          title: Image.asset(
            "assets/images/Logo-colored.png",
            width: 120,
            height: 120,
            fit: BoxFit.contain,
          ),
          actions: [
            Builder(builder: (context) {
              return GestureDetector(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: SvgPicture.asset("assets/icons/menu_toggle.svg"),
                ),
              );
            })
          ],
        );
}