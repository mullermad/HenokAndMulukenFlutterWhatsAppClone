import 'package:flutter/material.dart';

class NewCommunity extends StatefulWidget {
  const NewCommunity({super.key});

  @override
  State<NewCommunity> createState() => _NewCommunityState();
}

class _NewCommunityState extends State<NewCommunity> {
  late Size size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color(0xff075e54),
          child: const Icon(
            Icons.arrow_forward,
          ),
        ),
        appBar: AppBar(
          title: const Text('New Community'),
          backgroundColor: const Color(0xff075e54),
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 45),
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: const [
                      Center(
                        child: Icon(
                          Icons.groups,
                          size: 113,
                          color: Colors.black,
                        ),
                      ),
                      Positioned(
                        bottom: -4,
                        right: 58,
                        child: Padding(
                          padding: EdgeInsets.only(right: 80, bottom: 23),
                          child: Icon(
                            Icons.camera_alt,
                            color: Color(0xff075e54),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.07,
                    child: TextField(
                      onTap: () {},
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          fillColor: Colors.black,
                          label: Text('Community name')),
                    ),
                  ),
                  const Divider(
                    height: 4,
                    thickness: 3,
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 23),
                    height: size.height * 0.1,
                    child: TextField(
                      onTap: () {},
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        fillColor: Colors.black,
                        label: Text('Community description'),
                      ),
                    ),
                  ),
                  const Divider(
                    height: 4,
                    thickness: 3,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 59),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 230),
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
