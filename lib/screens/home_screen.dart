import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:hotel_booking/models/hotel_model.dart';
import 'package:hotel_booking/providers/all_hotels_provider.dart';
import 'package:intl/intl.dart';

import '../widgets/button_widget.dart';
import '../widgets/icon_button_widget.dart';
import '../widgets/rating_widget.dart';
import '../widgets/text_field_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  final String assetName = 'assets/icons/booking.svg';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              margin: EdgeInsets.only(top: size.height * 0.25),
              color: Colors.white,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(children: const [
                    _HeaderSection(),
                    _SearchCardWidget(),
                    SizedBox(height: 20),
                    _NearBYHotels(),
                  ]),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _NearBYHotels extends ConsumerWidget {
  const _NearBYHotels({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hotels = ref.watch(allHotelsProvider);

    return Column(
      children: [
        hotels.when(
          data: (hotels) {
            return ListView.builder(
              shrinkWrap: true,
              itemCount: hotels.length,
              itemBuilder: (context, index) {
                return HotelCardWidget(hotel: hotels[index]);
              },
            );
          },
          error: (error, stackTrace) => Text('Error $stackTrace'),
          loading: () => const Center(child: CircularProgressIndicator()),
        )
      ],
    );
  }
}

class HotelCardWidget extends StatelessWidget {
  const HotelCardWidget({
    super.key,
    required this.hotel,
  });

  final HotelModel hotel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        color: Colors.grey.withAlpha(50),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Flexible(
            flex: 1,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                topLeft: Radius.circular(20),
              ),
              child: Image.asset(
                hotel.thumbnailPath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Flexible(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      hotel.title,
                      maxLines: 2,
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Icon(Icons.location_on),
                    const SizedBox(height: 5),
                    Text(hotel.location),
                    RatingWidget(
                      ratingScore: hotel.ratingScore,
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

class _SearchCardWidget extends StatelessWidget {
  const _SearchCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final locationTextController = TextEditingController();
    final dateFromTextController = TextEditingController();
    final dateToTextController = TextEditingController();

    locationTextController.text = 'Brazil';
    dateFromTextController.text = dateToTextController.text =
        DateFormat('dd MM yyyy').format(DateTime.now());

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.grey)),
      child: Column(
        children: [
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 10.0),
                child: Icon(Icons.location_on, color: Colors.blue),
              ),
              const SizedBox(height: 20),
              TextFieldWidget(
                label: 'Where',
                controller: locationTextController,
              ),
            ],
          ),
          const Divider(),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 10.0),
                child: Icon(Icons.calendar_month, color: Colors.blue),
              ),
              const SizedBox(height: 20),
              TextFieldWidget(
                label: 'From',
                controller: dateFromTextController,
              ),
              TextFieldWidget(label: 'To', controller: dateFromTextController),
            ],
          ),
          const SizedBox(height: 10),
          const ButtonWidget(text: 'Search'),
        ],
      ),
    );
  }
}

class _HeaderSection extends StatelessWidget {
  const _HeaderSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            CircleAvatar(
              radius: 25.0,
              backgroundImage: AssetImage('assets/images/photo.jpeg'),
            ),
            IconButtonWidget(
              icon: Icons.notifications_outlined,
              size: 20,
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            'Welcome back 👋',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
