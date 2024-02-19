import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ProfileScreen(
        providerConfigs: const [
          EmailProviderConfiguration(),
        ],
        actions: [
          SignedOutAction(
            (context) {
              Navigator.of(context).pop();
            },
          )
        ],
        avatarSize: 48,
      ),
    );
  }
}
