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
    const HotelModel(
        id: '1',
        title: 'Anna Hotel Anna Hotel Anna Hotel Anna Hotel',
        location: 'Cutitiba, Paraná',
        address: 'Rua John Doe 69',
        description: 'We are only a 10-minute to Castle',
        thumbnailPath: 'assets/images/thumbnail_01.jpg',
        imagePaths: [
          'assets/images/gallery_01.jpg',
          'assets/images/gallery_02.jpg',
          'assets/images/gallery_03.jpg',
        ],
        price: 123,
        coordinate: LatLng(-7.848484151212, 110.19151447777),
        ratingScore: 0.25,
        totalReview: 45),
    const HotelModel(
        id: '2',
        title: 'John Hotel',
        location: 'Belo Horizonte, Minas Gerais',
        address: 'Rua alphavaca 336',
        description: 'You are only a 10-minute to Castle',
        thumbnailPath: 'assets/images/thumbnail_01.jpg',
        imagePaths: [
          'assets/images/gallery_01.jpg',
          'assets/images/gallery_02.jpg',
          'assets/images/gallery_03.jpg',
        ],
        price: 235,
        coordinate: LatLng(-9.848484151212, 20.19151447777),
        ratingScore: 1.25,
        totalReview: 158),
    const HotelModel(
        id: '1',
        title: 'Anna Hotel',
        location: 'Cutitiba, Paraná',
        address: 'Rua John Doe 69',
        description: 'We are only a 10-minute to Castle',
        thumbnailPath: 'assets/images/thumbnail_01.jpg',
        imagePaths: [
          'assets/images/gallery_01.jpg',
          'assets/images/gallery_02.jpg',
          'assets/images/gallery_03.jpg',
        ],
        price: 123,
        coordinate: LatLng(-7.848484151212, 110.19151447777),
        ratingScore: 3,
        totalReview: 45),
    const HotelModel(
        id: '2',
        title: 'John Hotel',
        location: 'Belo Horizonte, Minas Gerais',
        address: 'Rua alphavaca 336',
        description: 'You are only a 10-minute to Castle',
        thumbnailPath: 'assets/images/thumbnail_01.jpg',
        imagePaths: [
          'assets/images/gallery_01.jpg',
          'assets/images/gallery_02.jpg',
          'assets/images/gallery_03.jpg',
        ],
        price: 235,
        coordinate: LatLng(-9.848484151212, 20.19151447777),
        ratingScore: 1.25,
        totalReview: 158),
    const HotelModel(
        id: '1',
        title: 'Anna Hotel',
        location: 'Cutitiba, Paraná',
        address: 'Rua John Doe 69',
        description: 'We are only a 10-minute to Castle',
        thumbnailPath: 'assets/images/thumbnail_01.jpg',
        imagePaths: [
          'assets/images/gallery_01.jpg',
          'assets/images/gallery_02.jpg',
          'assets/images/gallery_03.jpg',
        ],
        price: 123,
        coordinate: LatLng(-7.848484151212, 110.19151447777),
        ratingScore: 0.25,
        totalReview: 45),
    const HotelModel(
        id: '2',
        title: 'John Hotel',
        location: 'Belo Horizonte, Minas Gerais',
        address: 'Rua alphavaca 336',
        description: 'You are only a 10-minute to Castle',
        thumbnailPath: 'assets/images/thumbnail_01.jpg',
        imagePaths: [
          'assets/images/gallery_01.jpg',
          'assets/images/gallery_02.jpg',
          'assets/images/gallery_03.jpg',
        ],
        price: 235,
        coordinate: LatLng(-9.848484151212, 20.19151447777),
        ratingScore: 1.25,
        totalReview: 158),
  ];
}
