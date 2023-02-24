import 'package:flutter/material.dart';
import 'package:mulukenapp/Components/ChatPressed.dart';
import 'package:mulukenapp/DataCenter/ChatData.dart';

import 'ChatButtonPressed.dart';

int currentIndex = 0;

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff075e54),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: ((context) {
                return const ChatButtonPressed();
              }),
            ),
          );
        },
        child: const Icon(Icons.chat),
      ),
      body: ListView.builder(
        itemCount: MyChatdata.length,
        itemBuilder: ((context, index) {
          return ListTile(
            onTap: () {
              currentIndex = index;
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ChatPressed(),
                ),
              );
            },
            leading: CircleAvatar(
                backgroundImage: NetworkImage(MyChatdata[index].image)),
            title: Text(MyChatdata[index].name),
            subtitle: Text(MyChatdata[index].message),
            trailing: Text(MyChatdata[index].time),
          );
        }),
      ),
    );
  }
}
