// ignore_for_file: public_member_api_docs, sort_constructors_first

class UserModel {
  final String uid;
  final String displayName;
  final String email;
  String? defaultDormUid;
  String? phoneNumber;
  late int activeItemAdCount;
  late int inactiveItemAdCount;
  late final int registeredAt;
  late final List<String> savedItems;
  late final List<String> savedDormitories;
  int? countryId;
  int? cityId;
  late final List<String> messageBoxUidList;

  UserModel.newAccount({
    required this.uid,
    required this.displayName,
    required this.email,
  }) {
    defaultDormUid = null;
    phoneNumber = null;
    activeItemAdCount = 0;
    inactiveItemAdCount = 0;
    registeredAt = DateTime.now().millisecondsSinceEpoch;
    savedItems = [];
    savedDormitories = [];
    messageBoxUidList = [];
    cityId = null;
    countryId = null;
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'displayName': displayName,
      'email': email,
      'defaultDormUid': defaultDormUid,
      'phoneNumber': phoneNumber,
      'activeItemAdCount': activeItemAdCount,
      'inactiveItemAdCount': inactiveItemAdCount,
      'registeredAt': registeredAt,
      'savedItems': savedItems,
      'savedDormitories': savedDormitories,
      'countryId': countryId,
      'cityId': cityId,
      'messageBoxUidList': messageBoxUidList,
    };
  }

  UserModel.fromMap(Map<String, dynamic> map)
      : uid = map['uid'],
        displayName = map['displayName'],
        email = map['email'],
        defaultDormUid = map['defaultDormUid'],
        phoneNumber = map['phoneNumber'],
        activeItemAdCount = map['activeItemAdCount'],
        inactiveItemAdCount = map['inactiveItemAdCount'],
        registeredAt = map['registeredAt'],
        savedItems = List<String>.from(map['savedItems']),
        savedDormitories = List<String>.from(map['savedDormitories']),
        countryId = map['countryId'],
        cityId = map['cityId'],
        messageBoxUidList = List<String>.from(map['messageBoxUidList']);
}
