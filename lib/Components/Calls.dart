import 'package:flutter/material.dart';
import 'package:mulukenapp/Components/ChatButtonPressed.dart';
import 'package:mulukenapp/Components/CreateLinkForCallPage.dart';
import 'package:mulukenapp/DataCenter/CallData.dart';

class Calls extends StatefulWidget {
  const Calls({super.key});

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff075e54),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: ((context) {
                return ChatButtonPressed();
              }),
            ),
          );
        },
        child: const Icon(Icons.add_call),
      ),
      body: ListView.builder(
          itemCount: MyCalldata.length,
          itemBuilder: ((context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) {
                  return const CreateLinkForCallPage();
                })));
              },
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: const Color(0xff075e54),
                  backgroundImage: NetworkImage(MyCalldata[index].image),
                ),
                title: Text(MyCalldata[index].name),
                subtitle: Text(MyCalldata[index].message),
              ),
            );
          })),
    );
  }
}
