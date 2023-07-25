class ItemAdModel {
  final String uid;
  final String ownerUid;
  final String title;
  final String description;
  final List<String> images;
  final List<String> thumbnailImages;
  bool isActive;
  double price;
  final String dormitoryUid;
  int savedCount;
  DateTime createdAt;
  final List<String> messageBoxUidList;

  ItemAdModel({
    required this.uid,
    required this.ownerUid,
    required this.title,
    required this.description,
    required this.images,
    required this.thumbnailImages,
    required this.isActive,
    required this.price,
    required this.dormitoryUid,
    required this.savedCount,
    required this.createdAt,
    required this.messageBoxUidList,
  });

  factory ItemAdModel.test() {
    return ItemAdModel(
      uid: 'uid',
      ownerUid: 'ownerUid',
      title: 'title',
      description: 'description',
      images: ['images'],
      thumbnailImages: ['thumbnailImages'],
      isActive: true,
      price: 1000,
      dormitoryUid: 'dormitoryUid',
      savedCount: 0,
      createdAt: DateTime.now(),
      messageBoxUidList: ['messageBoxUidList'],
    );
  }
}
