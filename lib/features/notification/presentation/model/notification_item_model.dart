import 'package:ftfl_task/features/notification/presentation/model/notification_model.dart';


class NotificationItemModel {
  final NotificationType type;

  final String image;
  final String title;
  final String message;
  final String time;

  final bool unread;
  final bool online;

  final String? actionText;

  const NotificationItemModel({
    required this.type,
    required this.image,
    required this.title,
    required this.message,
    required this.time,
    this.unread = false,
    this.online = false,
    this.actionText,
  });
}