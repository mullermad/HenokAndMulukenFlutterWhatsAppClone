import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mulukenapp/DataCenter/ChatData.dart';

class ChatButtonPressed extends StatefulWidget {
  const ChatButtonPressed({super.key});

  @override
  State<ChatButtonPressed> createState() => _ChatButtonPressedState();
}

class _ChatButtonPressedState extends State<ChatButtonPressed> {
  late Size size;
  bool IsSearching = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            !IsSearching
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text("Selected Contact"),
                      Text(
                        '40 contacts',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  )
                : const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'type a name or number...',
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontStyle: FontStyle.italic,
                        ),
                        border: InputBorder.none,
                      ),
                      style: TextStyle(color: Colors.white, fontSize: 23),
                    ),
                  ),
            // : TextField(),
            SizedBox(
              width: size.width * 0.06,
            ),
            !IsSearching
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        IsSearching = !IsSearching;
                      });
                    },
                    icon: const Icon(Icons.search),
                  )
                : IconButton(
                    onPressed: () {
                      setState(() {
                        IsSearching = !IsSearching;
                      });
                    },
                    icon: const Icon(Icons.cancel),
                  ),
            SizedBox(width: size.width * 0.009),
            PopupMenuButton(itemBuilder: ((context) {
              return const [
                PopupMenuItem(
                  child: Text('Invite a friend'),
                ),
                PopupMenuItem(
                  child: Text('contacts'),
                ),
                PopupMenuItem(
                  child: Text('Refresh'),
                ),
                PopupMenuItem(
                  child: Text('Help'),
                ),
              ];
            }))
          ],
        ),
        backgroundColor: Color(0xff075e54),
      ),
      body: ListView.builder(
        itemCount: MyChatdata.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(MyChatdata[index].image),
            ),
            title: Text(MyChatdata[index].name),
          );
        },
      ),
    );
  }
}
