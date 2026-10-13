import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatars'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: const CircleAvatar(
              backgroundImage: NetworkImage('https://picsum.photos/id/64/100/100'),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: const CircleAvatar(
              backgroundColor: Colors.deepPurple,
              foregroundColor: Colors.white,
              child: Text('AG'),
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          const Center(
            child: CircleAvatar(
              radius: 100,
              backgroundImage: NetworkImage('https://picsum.photos/id/237/400/400'),
            ),
          ),
          const SizedBox(height: 24),
          const Center(
            child: Text(
              'Anna Garcia',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.teal,
                foregroundColor: Colors.white,
                child: Icon(Icons.person),
              ),
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.orange,
                foregroundColor: Colors.white,
                child: Text('JP'),
              ),
              CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage('https://picsum.photos/id/1005/200/200'),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}