import 'package:dormshop/product/enum/message_type_enum.dart';
import 'package:flutter/material.dart';

@immutable
final class MessageModel {
  final String uid;
  final DateTime date;
  final String senderUid;
  final String boxUid;
  final MessageTypeEnum messageType;
  final String content;

  const MessageModel({
    required this.uid,
    required this.date,
    required this.senderUid,
    required this.boxUid,
    required this.messageType,
    required this.content,
  });
}
