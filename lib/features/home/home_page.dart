import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/firestore.dart';
import 'package:trip_together/features/auth/user_profile.dart';

class HomePage extends StatelessWidget {
  HomePage({
    super.key,
    required this.currentUser,
  });

  final User currentUser;

  final usersQuery = FirebaseFirestore.instance.collection('users');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Users collection'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const UserProfileScreen(),
                  fullscreenDialog: true,
                ),
              );
            },
            icon: const Icon(Icons.person),
          ),
        ],
      ),
      body: FirestoreListView<Map<String, dynamic>>(
        query: usersQuery,
        itemBuilder: (context, snapshot) {
          Map<String, dynamic> user = snapshot.data();
          return Text('User name is ${user['displayName']}');
        },
      ),
    );
  }
}
