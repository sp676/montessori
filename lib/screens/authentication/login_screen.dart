import 'package:flutter/material.dart';
import 'package:montessori/utils/colors.dart';

import '../../routes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: ListView(
        children: [
          Container(
            color: MyColors.secondaryColor,
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Visibility(
                  visible: MediaQuery.of(context).viewInsets.bottom == 0,
                  child: Image.asset(
                    'assets/images/logo.jpg',
                    width: 300,
                    height: 300,
                  ),
                ),
                Image.asset(
                  'assets/images/children1.jpg',
                  height: 350,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    padding: const EdgeInsets.all(35),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            Text(
                              "SIGN IN",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Email',
                              fillColor: MyColors.secondaryColor,
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            fillColor: MyColors.secondaryColor,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.qr_code,
                            ),
                            const Text(
                              'Scan QR',
                              style: TextStyle(color: Colors.blue),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: MyColors.buttonColor,
                                fixedSize: const Size(100, 25),
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, Routes.home);
                              },
                              child: const Text(
                                'LOGIN',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15,),
                        const Text(
                          'Forgot Password?',
                          style: TextStyle(color: Colors.blue),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
