import 'package:flutter/material.dart';
import 'package:project_sanbercode/app/routes/app_pages.dart';
import 'package:project_sanbercode/theme.dart';

import 'package:get/get.dart';

import '../controllers/signup_page_controller.dart';

class SignupPageView extends GetView<SignupPageController> {
  const SignupPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        children: [
          title(),
          nameInput(),
          emailInput(),
          passwordInput(),
          registerButton(),
          Center(
            child: Container(
              margin: EdgeInsets.only(
                top: 24,
                bottom: 21,
              ),
              child: Text(
                'OR',
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          signInText(),
        ],
      ),
    );
  }
}

Widget title() {
  return Container(
    margin: EdgeInsets.only(top: 84),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Register your\naccount',
          style:
              darkTextStyle.copyWith(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Container(
              width: 87,
              height: 8,
              margin: EdgeInsets.only(right: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: darkColor,
              ),
            ),
            Container(
              width: 14,
              height: 8,
              margin: EdgeInsets.only(right: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: darkColor,
              ),
            ),
          ],
        )
      ],
    ),
  );
}

Widget nameInput() {
  return Container(
    margin: EdgeInsets.only(top: 48),
    padding: EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: greyColor,
      borderRadius: BorderRadius.circular(14),
    ),
    child: TextFormField(
      // controller: controller.nameC,
      decoration: InputDecoration.collapsed(
        hintText: 'Full Name',
        hintStyle: darkTextStyle.copyWith(fontSize: 16),
      ),
    ),
  );
}

Widget emailInput() {
  return Container(
    margin: EdgeInsets.only(top: 48),
    padding: EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: greyColor,
      borderRadius: BorderRadius.circular(14),
    ),
    child: TextFormField(
      // controller: controller.emailC,
      decoration: InputDecoration.collapsed(
        hintText: 'Email',
        hintStyle: darkTextStyle.copyWith(fontSize: 16),
      ),
    ),
  );
}

Widget passwordInput() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        margin: EdgeInsets.only(top: 32),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: greyColor,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Row(
          children: [
            Expanded(
              child: TextFormField(
                // controller: passwordController,
                obscureText: true,
                decoration: InputDecoration.collapsed(
                  hintText: 'Password',
                  hintStyle: darkTextStyle.copyWith(fontSize: 16),
                ),
              ),
            ),
            Icon(
              Icons.visibility_outlined,
            ),
          ],
        ),
      ),
    ],
  );
}

// Widget registerButton() {
//   return ElevatedButton(
//     onPressed: () {
//       var controller;
//       controller.signUpUser();
//     },
//     child: Text("Register"),
//   );
// }
Widget registerButton() {
  return Container(
    height: 50,
    width: double.infinity,
    margin: EdgeInsets.only(top: 32),
    child: TextButton(
      onPressed: () {
        controller.signUpPage();
      },
      style: TextButton.styleFrom(
        backgroundColor: darkColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
      ),
      child: Text(
        'Register',
        style:
            whiteTextStyle.copyWith(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    ),
  );
}

Widget signInText() {
  return Container(
    margin: EdgeInsets.only(
      top: 18,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Do you have an account ?",
          style: greyTextStyle.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: 2,
        ),
        TextButton(
          onPressed: () => Get.toNamed(Routes.LOGIN_PAGE),
          child: Text(
            'Login',
            style: blueTextstyle.copyWith(
                fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    ),
  );
}
