import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:realstate/constant.dart';

class NotificationScreen extends StatefulWidget {
  static const path = 'notification';
  static const name = 'notification';

  const NotificationScreen({super.key});

  static Widget pageBuilder(BuildContext context, GoRouterState state) {
    return const NotificationScreen();
  }

  @override
  createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  final List<Map<String, String>> _notifications = [
    {
      'image': 'assets/images/user1.jpg',
      'text': 'John Doe liked your post about Flutter. You now have 10 likes on your post.',
    },
    {
      'image': 'assets/images/user2.jpg',
      'text': 'Jane Smith commented on your post about Flutter. You now have 5 comments on your post.',
    },
    {
      'image': 'assets/images/user3.jpg',
      'text': 'Bob Johnson shared your post about Flutter. You now have 1 share on your post.',
    },
    {
      'image': 'assets/images/user4.jpg',
      'text': 'Mary Williams liked your post about Flutter. You now have 15 likes on your post.',
    },
    {
      'image': 'assets/images/user5.jpg',
      'text': 'Tom Brown commented on your post about Flutter. You now have 7 comments on your post.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(kPage),
        itemCount: _notifications.length,
        itemBuilder: (context, index) {
          return NotificationCard(
            notifications: _notifications,
            index: index,
          );
        },
      ),
    );
  }
}

class NotificationCard extends StatelessWidget {
  const NotificationCard({
    super.key,
    required List<Map<String, String>> notifications,
    required this.index,
  }) : _notifications = notifications;

  final List<Map<String, String>> _notifications;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Card(
        child: ListTile(
          leading: const CircleAvatar(),
          title: Text(_notifications[index]['text']!),
          // trailing: Icon(Icons.arrow_forward),
          onTap: () {
            // Add your notification detail logic here
          },
        ),
      ),
    );
  }
}
