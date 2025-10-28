import 'package:flutter/material.dart';
import 'package:my_app/features/auth/data/models/user/user_model.dart';
import 'package:my_app/features/auth/presentation/pages/User/chat_page.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  // Dữ liệu bạn bè cứng
  final List<UserModel> _friends = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Chat with Friends')),
      body: ListView.separated(
        itemCount: _friends.length,
        separatorBuilder: (_, __) => const Divider(height: 1),
        itemBuilder: (context, index) {
          final friend = _friends[index];
          final avatarUrl = friend.avatar;

          return ListTile(
            leading: CircleAvatar(
              radius: 22,
              backgroundImage: NetworkImage(avatarUrl),
              child: avatarUrl.isEmpty
                  ? Text(_initials(friend.userName))
                  : null,
            ),
            title: Text(
              friend.userName,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => ChatPage(
                    id: friend.userId, // đảm bảo kiểu id đúng với ChatPage
                    friendname: friend.userName,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }

  String _initials(String name) {
    final parts = name.trim().split(RegExp(r'\s+'));
    if (parts.isEmpty) return '?';
    String first = parts.first.isNotEmpty ? parts.first[0] : '';
    String last = parts.length > 1 && parts.last.isNotEmpty ? parts.last[0] : '';
    final raw = (first + last).toUpperCase();
    return raw.isEmpty ? '?' : raw;
  }
}
