import 'package:flutter/material.dart';

class EditButtonPressed extends StatefulWidget {
  const EditButtonPressed({super.key});

  @override
  State<EditButtonPressed> createState() => _EditButtonPressedState();
}

bool onchangedvalue = false;
late Size size;
final _controller = TextEditingController();
String name = '';

class _EditButtonPressedState extends State<EditButtonPressed> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.disabled_by_default)),
        backgroundColor: const Color(0xff075e54),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            Icon(Icons.emoji_emotions),
            SizedBox(
              width: 50,
            ),
            Icon(Icons.title),
            SizedBox(
              width: 34,
            ),
            Icon(Icons.color_lens)
          ],
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(38),
        color: const Color(0xff075e54),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controller,
              onChanged: (value) {
                setState(() {
                  name = value;
                });
              },
              decoration: InputDecoration(
                  suffixIcon: name.isNotEmpty ? const Icon(Icons.send) : null,
                  hintText: 'Type a status',
                  hintStyle: const TextStyle(fontSize: 32)),
            ),
          ],
        ),
      ),
    );
  }
}
