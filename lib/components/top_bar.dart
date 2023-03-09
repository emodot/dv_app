import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class TopBar extends StatelessWidget {
  const TopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            "assets/images/Logo-colored.png",
            height: 120,
            width: 120,
          ),
          SvgPicture.asset("assets/icons/menu_toggle.svg"),
        ],
      ),
    );
  }
}