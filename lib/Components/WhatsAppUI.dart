import 'package:flutter/material.dart';
import 'package:mulukenapp/Components/Calls.dart';
import 'package:mulukenapp/Components/Chats.dart';
import 'package:mulukenapp/Components/Communities.dart';
import 'package:mulukenapp/Components/Status.dart';

class WhatsAppUi extends StatefulWidget {
  const WhatsAppUi({super.key});

  @override
  State<WhatsAppUi> createState() => _WhatsAppUiState();
}

bool IsSearching = false;
var SelectingPopup = '';

Icon customIcon = const Icon(Icons.search);

class _WhatsAppUiState extends State<WhatsAppUi> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            !IsSearching
                ? IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.camera_alt_outlined),
                  )
                : const Text(''),
            !IsSearching
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        IsSearching = !IsSearching;
                      });
                    },
                    icon: customIcon,
                  )
                : IconButton(
                    onPressed: () {
                      setState(() {
                        IsSearching = !IsSearching;
                      });
                    },
                    icon: const Icon(Icons.cancel),
                  ),
            !IsSearching
                ? PopupMenuButton(onSelected: (value) {
                    setState(() {
                      SelectingPopup = value.toString();
                    });

                    Navigator.pushNamed(context, value.toString());
                  }, itemBuilder: ((BuildContext context) {
                    return const [
                      PopupMenuItem(
                        value: '/newGroup',
                        child: Text('New group'),
                      ),
                      PopupMenuItem(
                        value: '/newBroadcast',
                        child: Text('New broadcast'),
                      ),
                      PopupMenuItem(
                        value: '/linkedDevices',
                        child: Text('Linked devices'),
                      ),
                      PopupMenuItem(
                        value: '/starredMessages',
                        child: Text('Starred messages'),
                      ),
                      PopupMenuItem(
                        value: '/Settings',
                        child: Text('Settings'),
                      ),
                    ];
                  }))
                : const Text(''),
          ],
          title: !IsSearching
              ? const Text('WhatsApp')
              : TextField(
                  decoration: InputDecoration(
                    icon: IconButton(
                      onPressed: () {
                        setState(() {
                          IsSearching = !IsSearching;
                        });
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                    hintText: 'search...',
                    hintStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontStyle: FontStyle.italic,
                    ),
                    border: InputBorder.none,
                  ),
                  style: const TextStyle(color: Colors.white, fontSize: 23),
                ),
          backgroundColor: const Color(0xff075e54),
          bottom: const TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                icon: Icon(Icons.groups),
              ),
              Tab(
                text: 'Chats',
              ),
              Tab(
                text: 'Status',
              ),
              Tab(
                text: 'Calls',
              ),
            ],
          ),
        ),
        body: const TabBarView(children: [
          Communities(),
          Chats(),
          Status(),
          Calls(),
        ]),
      ),
    );
  }
}
