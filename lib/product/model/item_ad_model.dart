class ItemAdModel {
  final String uid;
  final String ownerUid;
  final String title;
  final String description;
  final List<String> images;
  final String thumbnailUrl;
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
    required this.thumbnailUrl,
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
      images: [
        'https://picsum.photos/100/100',
        'https://picsum.photos/100/100'
      ],
      thumbnailUrl: "https://picsum.photos/100/100",
      isActive: true,
      price: 1000.1,
      dormitoryUid: 'dormitoryUid',
      savedCount: 0,
      createdAt: DateTime.now(),
      messageBoxUidList: ['messageBoxUidList'],
    );
  }
}
