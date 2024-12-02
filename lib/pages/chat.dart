import 'package:chatapp/pages/widgets/chatlist.dart';
import 'package:chatapp/pages/widgets/favouretchats.dart';
import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.small(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(255, 72, 33, 243),
        child: const Icon(
          Icons.message,
          color: Colors.white,
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 72, 33, 243),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 72, 33, 243),
        title: const Text(
          'Chats',
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {}, color: Colors.white, icon: const Icon(Icons.settings))
        ],
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30,
          ),
          favouretchats(),
          SizedBox(
            height: 20,
          ),
          chatlist()
        ],
      ),
    );
  }
}
