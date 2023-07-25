import 'package:flutter/material.dart';

part 'location_info_model.dart';

final class DormitoryModel {
  final String uid;
  final String name;
  int savedCount;
  int defaultCount;
  final List<int> itemsUidList;
  late final LocationInfoModel locationInfo;

  DormitoryModel({
    required this.uid,
    required this.name,
    required this.savedCount,
    required this.defaultCount,
    required this.itemsUidList,
    required double lat,
    required double long,
    required int zipCode,
    required int countryId,
    required int cityId,
    required String mapLink,
  }) {
    locationInfo = LocationInfoModel(
      lat: lat,
      long: long,
      zipCode: zipCode,
      countryId: countryId,
      cityId: cityId,
      mapLink: mapLink,
    );
  }
}
