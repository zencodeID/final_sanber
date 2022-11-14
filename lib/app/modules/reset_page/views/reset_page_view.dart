import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/reset_page_controller.dart';
import 'package:project_sanbercode/theme.dart';

class ResetPageView extends GetView<ResetPageController> {
  const ResetPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        children: [
          title(),
          emailInput(),
          resetButton(),
          Center(
            child: Container(
              margin: EdgeInsets.only(
                top: 24,
                bottom: 21,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget title() {
    return Container(
      margin: EdgeInsets.only(top: 84),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Forgot your\naccount',
            style: darkTextStyle.copyWith(
                fontSize: 24, fontWeight: FontWeight.bold),
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

  Widget emailInput() {
    return Container(
      margin: EdgeInsets.only(top: 48),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(14),
      ),
      child: TextFormField(
        // controller: emailController,
        decoration: InputDecoration.collapsed(
          hintText: 'Email',
          hintStyle: darkTextStyle.copyWith(fontSize: 16),
        ),
      ),
    );
  }

  Widget resetButton() {
    return Container(
      height: 50,
      width: double.infinity,
      margin: EdgeInsets.only(top: 32),
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: darkColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
        child: Text(
          'Submit',
          style: whiteTextStyle.copyWith(
              fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
