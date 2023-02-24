import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mulukenapp/DataCenter/ChatData.dart';

class NewBroadcastPage extends StatefulWidget {
  const NewBroadcastPage({super.key});

  @override
  State<NewBroadcastPage> createState() => _NewBroadcastPageState();
}

class _NewBroadcastPageState extends State<NewBroadcastPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xff075e54),
        child: const Icon(Icons.done),
      ),
      appBar: AppBar(
        title: const ListTile(
          title: Text(
            'New broadcast',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          subtitle: Text(
            '0 of 8 selected',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
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
          })),
    );
  }
}
