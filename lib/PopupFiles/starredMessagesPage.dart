import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class StarredMessagePage extends StatefulWidget {
  const StarredMessagePage({super.key});

  @override
  State<StarredMessagePage> createState() => _StarredMessagePageState();
}

late Size size;

class _StarredMessagePageState extends State<StarredMessagePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Starred messages'),
          backgroundColor: const Color(0xff075e54),
        ),
        body: Column(
          children: [
            SizedBox(
              height: size.height * 0.3,
            ),
            Center(
              child: MaterialButton(
                shape: const CircleBorder(),
                color: Color(0xff075e54),
                padding: const EdgeInsets.all(20),
                onPressed: () {},
                child: const Icon(
                  Icons.star,
                  size: 190,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text('Tap and hold on any messages'),
            const Text(' in any chat to star '),
            const Text('it to find it later'),
          ],
        ));
  }
}
