import 'package:flutter/material.dart';

class HotelListTileWidget extends StatelessWidget {
  const HotelListTileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
            color: Colors.grey.withAlpha(50),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Expanded(
            child: ListTile(
              minVerticalPadding: 50,
              leading: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
                child: Image.asset(
                  height: 100,
                  width: 100,
                  'assets/images/gallery_01.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              title: const Text(
                'hotel.title hotel.title hotel.title ',
                maxLines: 2,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Row(
                children: [
                  const Icon(Icons.location_on),
                  const SizedBox(height: 5),
                  Text('hotel.location'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
