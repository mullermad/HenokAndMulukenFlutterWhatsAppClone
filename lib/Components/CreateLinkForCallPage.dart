import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CreateLinkForCallPage extends StatefulWidget {
  const CreateLinkForCallPage({super.key});

  @override
  State<CreateLinkForCallPage> createState() => _CreateLinkForCallPageState();
}

class _CreateLinkForCallPageState extends State<CreateLinkForCallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff075e54),
        title: const Text(
          'Create Call link',
          style: TextStyle(fontSize: 23),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 23,
          ),
          const Center(
              child: Text(
            'Anyone with whatsApp can use this link to join this call',
            style: TextStyle(fontSize: 12),
          )),
          const Text('only share with trusted people'),
          const SizedBox(
            height: 23,
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.all(18),
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: const Color(0xff075e54),
                  child: IconButton(
                    icon: const Icon(
                      Icons.videocam_rounded,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              const Text('https://www.whatsapgrouplinks.com/'),
            ],
          ),
          const SizedBox(
            height: 23,
          ),
          Container(
            margin: const EdgeInsets.only(left: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Icon(Icons.send),
                SizedBox(
                  width: 32,
                ),
                Text('send link via WhatsApp')
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Icon(Icons.copy),
                SizedBox(
                  width: 32,
                ),
                Text('copy link ')
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Icon(Icons.share),
                SizedBox(
                  width: 32,
                ),
                Text('share link ')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
