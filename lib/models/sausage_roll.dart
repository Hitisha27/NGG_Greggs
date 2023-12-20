import 'package:equatable/equatable.dart';

class SausageRoll extends Equatable {
  final String articleCode;
  final String shopCode;
  final DateTime availableFrom;
  final DateTime availableUntil;
  final double eatOutPrice;
  final double eatInPrice;
  final String articleName;
  final List<String> dayParts;
  final String internalDescription;
  final String customerDescription;
  final String imageUri;
  final String thumbnailUri;

  const SausageRoll({
    required this.articleCode,
    required this.shopCode,
    required this.availableFrom,
    required this.availableUntil,
    required this.eatOutPrice,
    required this.eatInPrice,
    required this.articleName,
    required this.dayParts,
    required this.internalDescription,
    required this.customerDescription,
    required this.imageUri,
    required this.thumbnailUri,
  });

  factory SausageRoll.fromJson(Map<String, dynamic> json) {
    return SausageRoll(
      articleCode: json['articleCode'] ?? '',
      shopCode: json['shopCode'] ?? '',
      availableFrom: DateTime.parse(json['availableFrom']),
      availableUntil: DateTime.parse(json['availableUntil']),
      eatOutPrice: (json['eatOutPrice'] ?? 0.0).toDouble(),
      eatInPrice: (json['eatInPrice'] ?? 0.0).toDouble(),
      articleName: json['articleName'] ?? '',
      dayParts: List<String>.from(json['dayParts'] ?? []),
      internalDescription: json['internalDescription'] ?? '',
      customerDescription: json['customerDescription'] ?? '',
      imageUri: json['imageUri'] ?? '',
      thumbnailUri: json['thumbnailUri'] ?? '',
    );
  }

  @override
  List<Object?> get props => [
        articleCode,
        shopCode,
        availableFrom,
        availableUntil,
        eatOutPrice,
        eatInPrice,
        articleName,
        dayParts,
        internalDescription,
        customerDescription,
        imageUri,
        thumbnailUri,
      ];
}
