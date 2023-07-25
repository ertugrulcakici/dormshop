final class MessageBoxModel {
  final String uid;
  final String itemAdUid;
  final String ownerPersonUid;
  final String buyerPersonUid;
  int unreadCount;
  DateTime lastMessageDate;
  final List<String> messagesUidList;

  MessageBoxModel({
    required this.uid,
    required this.itemAdUid,
    required this.ownerPersonUid,
    required this.buyerPersonUid,
    required this.unreadCount,
    required this.lastMessageDate,
    required this.messagesUidList,
  });
}
