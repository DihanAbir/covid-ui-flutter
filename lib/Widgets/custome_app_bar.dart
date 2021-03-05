import 'package:flutter/material.dart';
import 'package:flutter_app/config/palette.dart';

class Custome_NavBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Palette.primaryColor,
      leading: IconButton(
        icon: const Icon(Icons.menu),
        iconSize: 28.0,
        onPressed: (){},
      ),
      actions :[
        IconButton(
          icon: const Icon(Icons.notifications_active_outlined),
          iconSize: 28.0,
          onPressed: (){},
        ),
      ]
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
