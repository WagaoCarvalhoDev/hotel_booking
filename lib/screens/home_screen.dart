import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  final String assetName = 'assets/icons/booking.svg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Hotel Booking',
          style: TextStyle(fontFamily: 'WorkSans'),
        ),
      ),
      body: Container(
        child: SvgPicture.asset(assetName,
            height: 100,
            colorFilter: const ColorFilter.mode(Colors.red, BlendMode.srcIn),
            semanticsLabel: 'A red up arrow'),
      ),
    );
  }
}
