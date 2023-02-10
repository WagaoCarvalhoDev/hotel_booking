import 'package:flutter/material.dart';
import 'package:hotel_booking/screens/home_screen.dart';

import '../screens/map_screen.dart';

class NavBarWidget extends StatelessWidget {
  const NavBarWidget({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        children: [
          _NavBarIcon(
            icon: Icon(Icons.home),
            text: 'Home',
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ));
            },
          ),
          _NavBarIcon(
            icon: Icon(Icons.home),
            text: 'Map',
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MapScreen(),
                  ));
            },
          ),
        ],
      ),
    );
  }
}

class _NavBarIcon extends StatelessWidget {
  const _NavBarIcon({
    Key? key,
    required this.icon,
    required this.text,
    this.onTap,
    this.isSelected,
  }) : super(key: key);

  final Icon icon;
  final String text;
  final Function()? onTap;
  final bool? isSelected;

  @override
  Widget build(BuildContext context) {
    //final color = isSelected ? Colors.blue : Colors.grey;
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.picture_in_picture_sharp),
          SizedBox(
            height: 5,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
