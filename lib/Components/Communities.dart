import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'NewCommunity.dart';

class Communities extends StatefulWidget {
  const Communities({super.key});

  @override
  State<Communities> createState() => _CommunitiesState();
}

class _CommunitiesState extends State<Communities> {
  late Size size;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: SizedBox(
              height: size.height / 4 - 70,
              child: Image.asset('assets/whatsappCommunity.jpg'),
            ),
          ),
          const Text(
            'Introducing communities',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          const SizedBox(
            height: 5,
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Text(
              'Easly organise your related groups'
              'and send announcements.Now,yourcommunities,'
              'like neighborhoods or schools,can have their own space.',
              style: TextStyle(fontSize: 20),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            width: 230,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff075e54),
                padding: const EdgeInsets.all(18.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80.0),
                ),
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const NewCommunity();
                }));
              },
              child: const Text(
                'Start your community',
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
