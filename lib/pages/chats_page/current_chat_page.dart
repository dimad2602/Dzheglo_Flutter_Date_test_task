import 'package:flutter/material.dart';

class CurrentChatPage extends StatelessWidget {
  final List<String> messages = [
    'Привет!',
    'Как твои дела?',
    'Давно не виделись.',
    'Когда увидимся?',
    'До встречи!',
  ];
  CurrentChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Чат с пользователем'),
      ),
      body: ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(messages[index]),
            leading: const CircleAvatar(
              backgroundImage:
                  AssetImage('assets/avatar.jpg'), // Фото пользователя
            ),
          );
        },
      ),
      bottomNavigationBar: const Padding(
        padding: EdgeInsets.all(8.0),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Напишите сообщение...',
            suffixIcon: Icon(Icons.send),
            border: OutlineInputBorder(),
          ),
        ),
      ),
    );
  }
}