part of 'dormitory_model.dart';

@immutable
final class LocationInfoModel {
  final double lat;
  final double long;
  final int zipCode;
  final int countryId;
  final int cityId;
  final String mapLink;

  const LocationInfoModel({
    required this.lat,
    required this.long,
    required this.zipCode,
    required this.countryId,
    required this.cityId,
    required this.mapLink,
  });
}
