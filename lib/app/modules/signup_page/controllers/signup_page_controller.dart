import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignupPageController extends GetxController {
  // Implement SignupPageController

  TextEditingController nameC = TextEditingController();
  TextEditingController emailC = TextEditingController();
  TextEditingController nipC = TextEditingController();

  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  void signUpUser() async {
    if (nameC.text.isNotEmpty &&
        nipC.text.isNotEmpty &&
        emailC.text.isNotEmpty) {
      try {
        UserCredential userCredential =
            await auth.createUserWithEmailAndPassword(
                email: emailC.text, password: "standart");

        if (userCredential.user != null) {
          String uid = userCredential.user!.uid;

          await firestore.collection("akun").doc(uid).set({
            "nip": nipC.text,
            "name": nameC.text,
            "uid": uid,
            "createdAt": DateTime.now().toIso8601String(),
          });
        }

        print(userCredential);
      } on FirebaseAuthException catch (e) {
        if (e.code == "weak-password") {
          Get.snackbar("Terjadi Kesalahan", "Password terlalu singkat");

          print('The Password provided is too week.');
        } else if (e.code == "email-already-in-use") {
          Get.snackbar(
              "Terjadi Kesalahan", "Akun sudah ada,silakan cek email anda");
          print('The account already exits for the email.');
        }
      } catch (e) {
        Get.snackbar("Terjadi Kesalahan", "tidak dapat menambahkan akun");
        print(e);
      }
    } else {
      Get.snackbar("Terjadi Kesalahan", "ID,nama, dan email harus di isi");
    }
  }
}
