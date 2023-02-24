import 'package:flutter/material.dart';
import 'package:mulukenapp/DataCenter/ChatData.dart';

class NewGroupPage extends StatefulWidget {
  NewGroupPage({super.key});

  @override
  State<NewGroupPage> createState() => _NewGroupPageState();
}

var currentIndex = 0;
bool IsSearching = false;

class _NewGroupPageState extends State<NewGroupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff075e54),
        onPressed: () {},
        child: const Icon(Icons.arrow_forward_rounded),
      ),
      appBar: AppBar(
        actions: [
          !IsSearching
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      IsSearching = !IsSearching;
                    });
                  },
                  icon: Icon(Icons.search),
                )
              : IconButton(
                  onPressed: () {
                    setState(() {
                      IsSearching = !IsSearching;
                    });
                  },
                  icon: const Icon(Icons.cancel),
                ),
        ],
        title: !IsSearching
            ? const ListTile(
                title: Text(
                  'New group',
                  style: TextStyle(color: Colors.white, fontSize: 23),
                ),
                subtitle: Text(
                  'Add participants',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              )
            : const TextField(
                decoration: InputDecoration(
                  hintText: 'search...',
                  hintStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontStyle: FontStyle.italic,
                  ),
                  border: InputBorder.none,
                ),
                style: TextStyle(color: Colors.white, fontSize: 23),
              ),
        backgroundColor: const Color(0xff075e54),
      ),
      body: ListView.builder(
        itemCount: MyChatdata.length,
        itemBuilder: ((context, index) {
          return ListTile(
            //todo

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
