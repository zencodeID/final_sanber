import 'package:get/get.dart';

import '../controllers/profileuser_controller.dart';

class ProfileuserBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileuserController>(
      () => ProfileuserController(),
    );
  }
}
