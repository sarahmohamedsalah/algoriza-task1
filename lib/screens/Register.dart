import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task1/routes/routes.dart';
import 'package:task1/widgets/button.dart';
import 'package:task1/widgets/text_form_field.dart';

import '../controller/controller.dart';
import '../widgets/text_utils.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);
  final TextEditingController numberController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final controller = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Form(
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 1.3,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 25,
                      right: 25,
                      top: 40,
                    ),
                    child: Column(
                      children: [
                        const TextUtils(
                            fontSize: 10,
                            text: "Welcome to fashion daly",
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            underline: TextDecoration.none),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            const TextUtils(
                                fontSize: 28,
                                text: "Register",
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                underline: TextDecoration.none),
                            const SizedBox(
                              width: 3,
                            ),
                            const TextUtils(
                                fontSize: 10,
                                text: 'help',
                                fontWeight: FontWeight.normal,
                                color: Colors.blue,
                                underline: TextDecoration.none),
                            const SizedBox(
                              height: 50,
                            ),
                            TextFormFields(
                                controller: emailController,
                                prefixIcon: const Icon(
                                  Icons.email,
                                  size: 30,
                                ),
                                suffixIcon: const Text(''),
                                obscureText: false,
                                hintText: 'Email'),
                            TextFormFields(
                                controller: numberController,
                                prefixIcon: const Icon(
                                  Icons.add_call,
                                  size: 30,
                                ),
                                suffixIcon: CountryCodePicker(
                                  initialSelection: 'IN',
                                  showCountryOnly: true,
                                ),
                                obscureText: false,
                                hintText: 'Number'),
                            const SizedBox(height: 20),
                            TextFormFields(
                                controller: passwordController,
                                prefixIcon: const Icon(
                                  Icons.lock,
                                  size: 30,
                                ),
                                suffixIcon: IconButton(
                                    onPressed: () {
                                      controller.visibility();
                                    },
                                    icon: controller.isVisibility
                                        ? const Icon(
                                            Icons.visibility_off,
                                          )
                                        : const Icon(
                                            Icons.visibility,
                                          )),
                                obscureText:
                                    controller.isVisibility ? false : true,
                                hintText: 'password'),
                            const SizedBox(
                              height: 50,
                            ),
                            Button(text: 'Register', onPressed: () {}),
                            const SizedBox(
                              height: 20,
                            ),
                            const TextUtils(
                              fontSize: 18,
                              text: "OR",
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                              underline: TextDecoration.none,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Button(
                                text: 'sign in with google', onPressed: () {}),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const TextUtils(
                                  fontSize: 18,
                                  text: ' has any account',
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                  underline: TextDecoration.none,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                InkWell(
                                  onTap: () {
                                    Get.offNamed(Routes.SignInScreen);
                                  },
                                  child: const TextUtils(
                                    fontSize: 18,
                                    text: 'Sign in here',
                                    fontWeight: FontWeight.normal,
                                    color: Colors.blue,
                                    underline: TextDecoration.none,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 60,
                            ),
                            const TextUtils(
                              fontSize: 10,
                              text:
                                  'by registering your account you agree to our terms ',
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                              underline: TextDecoration.none,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
