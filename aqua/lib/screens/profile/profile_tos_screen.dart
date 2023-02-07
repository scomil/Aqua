import 'package:aqua/screens/onboarding/tos_web_view.dart';
import 'package:flutter/material.dart';

class ProfileTosScreen extends StatelessWidget {
  static const routeName = '/profileTosScreen';

  const ProfileTosScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SafeArea(
        child: TosWebView(
          displayBottomPadding: false,
        ),
      ),
    );
  }
}
