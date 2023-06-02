import 'package:flutter/material.dart';
import 'package:montessori/utils/colors.dart';
import '../../routes.dart';
import '../../utils/responsive.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize.init(context); // Initialize screen size variables
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: ListView(
        children: [
          Container(
            color: MyColors.secondaryColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Visibility(
                  visible: MediaQuery.of(context).viewInsets.bottom == 0,
                  child: Image.asset(
                    'assets/images/logo.jpg',
                    width: ScreenSize.screenWidth * 0.7,
                    // height: ScreenSize.screenHeight * 0.4,
                  ),
                ),
                Image.asset(
                  'assets/images/children1.jpg',
                  width: ScreenSize.screenWidth * 0.54,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8,),
                  child: Container(
                    height: ScreenSize.screenHeight * 0.4,
                    padding: const EdgeInsets.only(top: 35, left: 35, right: 35),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
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
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          'Forgot Password?',
                          style: TextStyle(color: Colors.blue),
                        ),
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
