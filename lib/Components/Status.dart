import 'package:flutter/material.dart';
import 'package:mulukenapp/DataCenter/StatusData.dart';

import 'EditButtonPressed.dart';

class Status extends StatefulWidget {
  const Status({super.key});

  @override
  State<Status> createState() => _StatusState();
}

late Size size;

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      floatingActionButton: Container(
        margin: const EdgeInsets.only(top: 300),
        child: Column(
          children: [
            SizedBox(
              height: size.height / 8,
            ),
            SizedBox(
              height: size.height / 43,
              width: size.width / 7,
              child: FloatingActionButton(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return const EditButtonPressed();
                      },
                    ),
                  );
                },
                child: const Icon(Icons.edit),
              ),
            ),
            SizedBox(
              height: size.height / 88,
            ),
            SizedBox(
              height: size.height / 11,
              width: size.width / 8,
              child: FloatingActionButton(
                backgroundColor: const Color(0xff075e54),
                onPressed: () {},
                child: const Icon(Icons.camera_alt),
              ),
            ),
          ],
        ),
      ),
      body: ListView.builder(
          itemCount: MyStatusdata.length,
          itemBuilder: ((context, index) {
            return Stack(
              children: [
                ListTile(
                  leading: CircleAvatar(
                      backgroundImage: NetworkImage(MyStatusdata[index].image)),
                  title: Text(MyStatusdata[index].name),
                  subtitle: Text(MyStatusdata[index].message),
                ),
                Positioned(
                  bottom: size.height / 98,
                  right: size.width / 2 + 135,
                  child: const Icon(
                    Icons.add_box_rounded,
                    color: Color.fromARGB(255, 36, 173, 40),
                  ),
                ),
              ],
            );
          })),
    );
  }
}
