import 'package:flutter/material.dart';

class MessageListScreen extends StatefulWidget {
  const MessageListScreen({super.key});

  @override
  State<MessageListScreen> createState() => _MessageListScreenState();
}

class _MessageListScreenState extends State<MessageListScreen> {
  final List<StoryData> stories = [
    StoryData(name: 'Your story', isAdd: true),
    StoryData(name: 'Asia'),
    StoryData(name: 'Jude'),
    StoryData(name: 'Verbain'),
    StoryData(name: 'Fear'),
  ];

  final List<ChatData> chats = [
    ChatData(name: 'Brule Fernald', time: '12:30 AM', hasRead: true),
    ChatData(name: 'Vee Terry', time: '12:20 AM', hasRead: false),
    ChatData(name: 'Ashley', time: '12:30 AM', hasRead: false),
    ChatData(name: 'Blair', time: '12:30 AM', hasRead: true),
    ChatData(name: 'Aaliyah', time: '12:30 AM', hasRead: true),
    ChatData(name: 'Ana', time: '12:30 AM', hasRead: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            _buildAppBar(),
            _buildStoryList(),
            Expanded(child: _buildChatList()),
          ],
        ),
      ),
    );
  }

  Widget _buildAppBar() {
    return Container(
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          Icon(Icons.arrow_back_ios, color: Colors.pink),
          Expanded(
            child: Center(
              child: Text(
                'Hugley',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.pink,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Icon(Icons.menu, color: Colors.pink),
        ],
      ),
    );
  }

  Widget _buildStoryList() {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 16),
        itemCount: stories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: 16),
            child: StoryItem(data: stories[index]),
          );
        },
      ),
    );
  }

  Widget _buildChatList() {
    return ListView.builder(
      itemCount: chats.length,
      itemBuilder: (context, index) {
        return ChatItem(data: chats[index]);
      },
    );
  }
}

class StoryData {
  final String name;
  final bool isAdd;

  StoryData({required this.name, this.isAdd = false});
}

class StoryItem extends StatelessWidget {
  final StoryData data;

  const StoryItem({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [Colors.pink.shade300, Colors.pink.shade500],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          padding: EdgeInsets.all(2),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            padding: EdgeInsets.all(2),
            child: Container(
              decoration: BoxDecoration(
                image: data.isAdd
                    ? null
                    : DecorationImage(
                        image: NetworkImage(
                          "https://images.unsplash.com/photo-1579493626691-0a01c2f901e1?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTl8fGhvdCUyMHdvbWVufGVufDB8fDB8fHww",
                        ),
                        fit: BoxFit.cover,
                      ),
                color: data.isAdd ? Colors.grey[200] : Colors.blue,
                shape: BoxShape.circle,
              ),
              child: data.isAdd
                  ? Icon(Icons.add, color: Colors.pink)
                  : Container(),
            ),
          ),
        ),
        SizedBox(height: 8),
        Text(
          data.name,
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }
}

class ChatData {
  final String name;
  final String time;
  final bool hasRead;

  ChatData({
    required this.name,
    required this.time,
    required this.hasRead,
  });
}

class ChatItem extends StatelessWidget {
  final ChatData data;

  const ChatItem({required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage(
                      "https://images.unsplash.com/photo-1636308600707-e19abecd6246?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8aG90JTIwd29tZW58ZW58MHx8MHx8fDA%3D",
                    ),
                    fit: BoxFit.cover)),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.name,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "You're WhatsApp: ${data.time}",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 12,
            height: 12,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: data.hasRead ? Colors.grey[300] : Colors.pink,
            ),
          ),
        ],
      ),
    );
  }
}
