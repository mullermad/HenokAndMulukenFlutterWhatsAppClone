import 'package:flutter/material.dart';
import 'package:mulukenapp/DataCenter/ChatData.dart';

import 'Chats.dart';

class ChatPressed extends StatefulWidget {
  const ChatPressed({super.key});

  @override
  State<ChatPressed> createState() => _ChatPressedState();
}

late Size size;
bool onchangedvalue = false;
String name = '';
String message = '';

final _controller = TextEditingController();

class _ChatPressedState extends State<ChatPressed> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff075e54),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                child: const Icon(Icons.arrow_back),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Container(
                margin: const EdgeInsets.only(left: 0, top: 2, bottom: 2),
                height: size.height * 0.08,
                width: size.width * 0.4,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage:
                        NetworkImage(MyChatdata[currentIndex].image),
                  ),
                  title: Text(
                    MyChatdata[currentIndex].name,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 1, top: 2, bottom: 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: size.width * 0.03,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.video_call,
                        size: 33,
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.02,
                    ),
                    const Icon(
                      Icons.call,
                      size: 36,
                    ),
                    SizedBox(
                      width: size.width * 0.02,
                    ),
                    PopupMenuButton(itemBuilder: ((context) {
                      return const [
                        PopupMenuItem(
                          child: Text('View contact'),
                        ),
                        PopupMenuItem(
                          child: Text('Media , link and docs'),
                        ),
                        PopupMenuItem(
                          child: Text('search'),
                        ),
                        PopupMenuItem(
                          child: Text('mute notification'),
                        ),
                        PopupMenuItem(
                          child: Text('Disappearing messages'),
                        ),
                        PopupMenuItem(
                          child: Text('Walpaper'),
                        ),
                        PopupMenuItem(
                          child: Text('more'),
                        ),
                      ];
                    }))
                  ],
                ),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Column(
              children: [],
            ),
            Expanded(
              child: Container(
                color: Colors.black12,
                child: message.isEmpty
                    ? const Center(
                        child: Text(
                        'message and calls with your favorites ',
                        style: TextStyle(
                          backgroundColor: Color.fromARGB(255, 234, 234, 147),
                        ),
                      ))
                    : Container(
                        padding: const EdgeInsets.all(9),
                        height: double.infinity,
                        width: double.infinity,
                        color: Colors.grey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(message),
                          ],
                        ),
                      ),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: size.width - 56,
                  child: TextField(
                    controller: _controller,
                    onChanged: (value) {
                      setState(() {
                        name = value;
                      });
                    },
                    decoration: const InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 5.0, horizontal: 8.0),
                      hintText: 'Message',
                      fillColor: Colors.white,
                      filled: true,
                      hintStyle: TextStyle(
                        color: Colors.black26,
                      ),
                      prefixIcon: Icon(Icons.face_outlined),
                      suffixIcon: Icon(Icons.camera_alt_outlined),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 6,
                ),
                name.isEmpty
                    ? const Icon(
                        Icons.mic,
                        size: 33,
                        color: Color.fromARGB(255, 40, 159, 102),
                      )
                    : IconButton(
                        onPressed: () {
                          setState(() {
                            message = _controller.text;
                          });
                        },
                        icon: const Icon(Icons.send),
                      ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
