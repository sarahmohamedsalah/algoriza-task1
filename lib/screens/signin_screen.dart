import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:task1/widgets/button.dart';
import 'package:task1/widgets/text_form_field.dart';
import 'package:task1/widgets/text_utils.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key}) : super(key: key);
  final TextEditingController numberController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  //final controller = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(),
          body: SingleChildScrollView(
            child: Form(
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
                        text: 'SignIn',
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
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                const SizedBox(height: 20),
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
                const SizedBox(
                  height: 50,
                ),
                Button(text: 'Sign in', onPressed: () {}),
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
                Button(text: 'sign in with google', onPressed: () {}),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const TextUtils(
                      fontSize: 18,
                      text: '  Doesnot has any account',
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                      underline: TextDecoration.none,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {},
                      child: const TextUtils(
                        fontSize: 18,
                        text: 'Register here',
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
                  text: 'use this application according to policy ',
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                  underline: TextDecoration.none,
                )
              ],
            )),
          )),
    );
  }
}
