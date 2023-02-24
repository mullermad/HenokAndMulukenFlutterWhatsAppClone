import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SettingPage extends StatelessWidget {
  SettingPage({super.key});
  late Size size;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Settings'),
          backgroundColor: const Color(0xff075e54),
        ),
        body: ListView(scrollDirection: Axis.vertical, children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              SizedBox(
                height: 10,
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_640.png',
                  ),
                  radius: 32,
                ),
                title: Text(
                  'Muller',
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text(
                  'Hey there ! I am using WhatApp',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              ListTile(
                leading: Icon(Icons.key),
                title: Text(
                  'Account',
                  style: TextStyle(fontSize: 18),
                ),
                subtitle: Text(
                  'Security notofication, change number',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              ListTile(
                leading: Icon(Icons.emoji_emotions),
                title: Text(
                  'Avator',
                  style: TextStyle(fontSize: 18),
                ),
                subtitle: Text(
                  'create edit, profile photo',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              ListTile(
                leading: Icon(Icons.lock),
                title: Text(
                  'privacy',
                  style: TextStyle(fontSize: 18),
                ),
                subtitle: Text(
                  'block contact , dissapreing messages',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              ListTile(
                leading: Icon(Icons.chat),
                title: Text(
                  'Chat',
                  style: TextStyle(fontSize: 18),
                ),
                subtitle: Text(
                  'Security notofication, change number',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              ListTile(
                leading: Icon(Icons.notifications),
                title: Text(
                  'Notification',
                  style: TextStyle(fontSize: 18),
                ),
                subtitle: Text(
                  'message group & call tones',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              ListTile(
                leading: Icon(Icons.data_usage),
                title: Text(
                  'Storage and data',
                  style: TextStyle(fontSize: 18),
                ),
                subtitle: Text(
                  'network usge and auto download',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              ListTile(
                leading: Icon(Icons.language),
                title: Text(
                  'App lanuage',
                  style: TextStyle(fontSize: 18),
                ),
                subtitle: Text(
                  'English(phones language)',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              ListTile(
                leading: Icon(Icons.help),
                title: Text(
                  'Help',
                  style: TextStyle(fontSize: 18),
                ),
                subtitle: Text(
                  'Help center ,contact us, privacy policy',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              ListTile(
                leading: Icon(Icons.group),
                title: Text(
                  'Invite a friend',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ]));
  }
}
