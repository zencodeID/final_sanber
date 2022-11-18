import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:project_sanbercode/app/routes/app_pages.dart';
import 'package:project_sanbercode/theme.dart';

import '../controllers/splash_page_controller.dart';

class SplashPageView extends GetView<SplashPageController> {
  const SplashPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset('assets/splash_image.png'),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 50,
                left: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/logo.png'),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Find Cozy House\nto Stay and Happy',
                    style: blueDarkTextstyle.copyWith(
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Stop membuang banyak waktu\npada tempat yang tidak habitable',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    height: 50,
                    width: 210,
                    // child: TextButton(
                    //   style: ButtonStyle(
                    //     backgroundColor:
                    //         MaterialStateProperty.all<Color>(Colors.purple),
                    //   ),
                    //   onPressed: () {},
                    //   child: Text(
                    //     'Explore Now',
                    //     style: whiteTextStyle.copyWith(
                    //       fontSize: 24,
                    //     ),
                    //   ),
                    // )
                    child: ElevatedButton(
                      onPressed: () {
                        Get.toNamed(Routes.LOGIN_PAGE);
                      },
                      child: Text(
                        'Explore Now',
                        style: TextStyle(fontSize: 18),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(17.0),
                        ),
                        backgroundColor: darkColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
