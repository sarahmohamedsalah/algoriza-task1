import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task1/routes/routes.dart';

import '../widgets/text_utils.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset(
                'assets/images/background.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              color: Colors.black.withOpacity(0.2),
              width: double.infinity,
              height: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  Container(
                    height: 60,
                    width: 190,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Center(
                      child: TextUtils(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          text: 'Get food delivery to your door steps',
                          color: Colors.black,
                          underline: TextDecoration.none),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 230,
                    child: const TextUtils(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        text: 'we have young and proffesional delivery',
                        color: Colors.black,
                        underline: TextDecoration.none),
                  ),
                  const SizedBox(
                    height: 250,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 40,
                          vertical: 12,
                        )),
                    onPressed: () {
                      Get.offNamed(Routes.SignInScreen);
                    },
                    child: const TextUtils(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      text: 'Get start',
                      color: Colors.white,
                      underline: TextDecoration.none,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const TextUtils(
                        fontSize: 18,
                        text: 'Dont have account',
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                        underline: TextDecoration.none,
                      ),
                      TextButton(
                        onPressed: () {
                          Get.offNamed(Routes.RegisterScreen);
                        },
                        child: const TextUtils(
                          text: 'sign up',
                          color: Colors.blue,
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          underline: TextDecoration.underline,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
