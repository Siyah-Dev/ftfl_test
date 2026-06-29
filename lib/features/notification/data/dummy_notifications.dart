import 'package:ftfl_task/features/notification/presentation/model/notification_item_model.dart';
import 'package:ftfl_task/features/notification/presentation/model/notification_model.dart';


const notifications = [
  NotificationItemModel(
    type: NotificationType.rose,
    image: 'https://randomuser.me/api/portraits/men/32.jpg',
    title: 'Dev, 27 sent you a Rose',
    message:
        '"Your traveling photos sold me — let\'s swap trail stories."',
    time: '12 min ago',
    unread: true,
    actionText: 'View profile',
  ),

  NotificationItemModel(
    type: NotificationType.compliment,
    image: 'https://randomuser.me/api/portraits/men/40.jpg',
    title: 'Arjun, 28 complimented your About',
    message:
        '"Equally driven and equally curious — that line got me."',
    time: '3 h ago',
  ),

  NotificationItemModel(
    type: NotificationType.match,
    image: 'https://randomuser.me/api/portraits/women/52.jpg',
    title: "It's a match with Aanya, 25",
    message:
        'You both liked each other. Say hello before the spark fades.',
    time: '40 min ago',
    unread: true,
    online: true,
    actionText: 'Send a message',
  ),

  NotificationItemModel(
    type: NotificationType.message,
    image: 'https://randomuser.me/api/portraits/women/48.jpg',
    title: 'Elena, 23 sent you a message',
    message:
        '"Haha okay that café pic was elite. When are you free?"',
    time: '1 h ago',
    unread: true,
  ),

  NotificationItemModel(
    type: NotificationType.dateRequest,
    image: '',
    title: 'Kabir approved your date request',
    message:
        'Coffee at Blue Tokai • Today, 7:00 PM • Koramangala',
    time: '2 h ago',
    unread: true,
    actionText: 'Open chat',
  ),
];