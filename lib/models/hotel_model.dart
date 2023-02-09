import 'package:google_maps_flutter/google_maps_flutter.dart';

class HotelModel {
  final String id;
  final String title;
  final String location;
  final String address;
  final String description;
  final String thumbnailPath;
  final List<String> imagePaths;
  final int totalReview;
  final double ratingScore;
  final double price;

  final LatLng coordinate;

  const HotelModel({
    required this.id,
    required this.title,
    required this.location,
    required this.address,
    required this.description,
    required this.thumbnailPath,
    required this.imagePaths,
    required this.price,
    required this.coordinate,
    this.totalReview = 0,
    this.ratingScore = 0,
  });

  static List<HotelModel> sampleHotels = [
    HotelModel(
        id: '1',
        title: 'Anna Hotel',
        location: 'Cutitiba, Paraná',
        address: 'Rua John Doe 69',
        description: 'We are only a 10-minute to Castle',
        thumbnailPath: 'assets/images/thumbnail.jpg',
        imagePaths: [
          'assets/images/gallery_01.jpg',
          'assets/images/gallery_02.jpg',
          'assets/images/gallery_03.jpg',
        ],
        price: 123,
        coordinate: LatLng(-7.848484151212, 110.19151447777),
        ratingScore: 0.25,
        totalReview: 45)
  ];
}
