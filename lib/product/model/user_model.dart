final class UserModel {
  final String uid;
  final String firebaseUid;
  final String username;
  final String email;
  String defaultDormUid;
  String phoneNumber;
  String activeItemAdCount;
  String inactiveItemAdCount;
  final DateTime registeredAt;
  List<String> savedItems;
  List<String> savedDormitories;
  int countryId;
  int cityId;
  List<String> messageBoxUidList;

  UserModel({
    required this.uid,
    required this.firebaseUid,
    required this.username,
    required this.email,
    required this.defaultDormUid,
    required this.phoneNumber,
    required this.activeItemAdCount,
    required this.inactiveItemAdCount,
    required this.registeredAt,
    required this.savedItems,
    required this.savedDormitories,
    required this.countryId,
    required this.cityId,
    required this.messageBoxUidList,
  });
}
