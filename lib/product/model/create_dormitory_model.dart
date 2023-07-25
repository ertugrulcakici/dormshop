import 'package:flutter/material.dart';

@immutable
final class CreateDormitoryRequestModel {
  final String uid;
  final String name;
  final int countryId;
  final int cityId;
  final String? detailUrl;

  const CreateDormitoryRequestModel({
    required this.uid,
    required this.name,
    required this.countryId,
    required this.cityId,
    this.detailUrl,
  });
}
