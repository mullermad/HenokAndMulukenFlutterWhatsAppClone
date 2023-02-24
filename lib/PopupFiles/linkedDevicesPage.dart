import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class linkedDevicesPage extends StatefulWidget {
  const linkedDevicesPage({super.key});

  @override
  State<linkedDevicesPage> createState() => _linkedDevicesPageState();
}

late Size size;

class _linkedDevicesPageState extends State<linkedDevicesPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Linked devices'),
        backgroundColor: const Color(0xff075e54),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
                height: size.height / 4 - 60,
                child: Container(
                    margin: const EdgeInsets.all(12.0),
                    child: Image.asset('assets/linkedDevices.jpg'))),
            const SizedBox(
              height: 5,
            ),
            const Text(
              'Use WhatsApp on other Devices',
              style: TextStyle(fontSize: 22),
            ),
            const SizedBox(
              height: 5,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff075e54),
                padding: const EdgeInsets.all(18.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(70.0),
                ),
              ),
              onPressed: () {},
              child: const Text(
                'Link a devices',
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
