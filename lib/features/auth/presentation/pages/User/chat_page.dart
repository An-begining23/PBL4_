import 'package:flutter/material.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class ChatPage extends StatefulWidget {
  final String id;  
  final String friendname; 
  ChatPage({required this.id, required this.friendname});

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final TextEditingController _controller = TextEditingController();
  late WebSocketChannel _channel;
  String _message = '';
  String Chat="";
  void appendChat(String newMessage) {
    setState(() {
      Chat += newMessage + '\n';
    });
  }
  void LoadChated(String oldchat) async
  {
    setState(() {
      Chat += oldchat + '\n';
    });
  }
  @override
  void initState() {
    super.initState();
    _channel = IOWebSocketChannel.connect('wss://your-websocket-server-url');
  }

  @override
  void dispose() {
    
    _channel.sink.close();
    super.dispose();
  }

  
  void _sendMessage() {
    if (_controller.text.isNotEmpty) {
      _channel.sink.add(_controller.text);
      _controller.clear(); 
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat with ${widget.friendname}'),  
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(hintText: 'Nhập tin nhắn...'),
            ),
          ),
          ElevatedButton(
            onPressed: _sendMessage,
            child: Text('Gửi tin nhắn'),
          ),
          Expanded(
            child: StreamBuilder(
              stream: _channel.stream,  // Lắng nghe dữ liệu từ WebSocket
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  _message = snapshot.data.toString();
                }
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    _message,  // Hiển thị tin nhắn nhận được
                    style: TextStyle(fontSize: 20),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
