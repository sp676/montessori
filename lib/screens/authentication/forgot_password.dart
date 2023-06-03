import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:montessori/utils/colors.dart';
import '../../utils/responsive.dart';
import '../../screens/authentication/otp_screen.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

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
                  padding: const EdgeInsets.only(
                    top: 8,
                  ),
                  child: Container(
                    height: ScreenSize.screenHeight * 0.4,
                    padding: const EdgeInsets.only(
                      top: 35,
                      left: 35,
                      right: 35,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            Text(
                              "FORGOT PASSWORD ?",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 8),
                          child: Row(
                            children: [
                              Text(
                                  'A 6 digit verification code will be sent to your \nUsername'),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Username',
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
                            hintText: 'New Password',
                            fillColor: MyColors.secondaryColor,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                        // const SizedBox(height: 20),
                        // TextFormField(
                        //   obscureText: true,
                        //   decoration: InputDecoration(
                        //     hintText: 'Re-enter Password',
                        //     fillColor: MyColors.secondaryColor,
                        //     filled: true,
                        //     border: OutlineInputBorder(
                        //       borderRadius: BorderRadius.circular(8),
                        //       borderSide: BorderSide.none,
                        //     ),
                        //   ),
                        // ),
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
                                Get.to(const OTPScreen());
                              },
                              child: const Text(
                                'RESET',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
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
