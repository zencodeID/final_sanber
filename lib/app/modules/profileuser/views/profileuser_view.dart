import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profileuser_controller.dart';

class ProfileuserView extends GetView<ProfileuserController> {
  const ProfileuserView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ProfileuserView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
