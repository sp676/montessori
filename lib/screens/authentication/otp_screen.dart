import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:montessori/screens/home/home_screen.dart';
import 'package:montessori/utils/colors.dart';
// import '../../routes.dart';
import '../../utils/responsive.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

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
                  padding: const EdgeInsets.only(top: 16),
                  child: Container(
                    height: ScreenSize.screenHeight * 0.39,
                    padding:
                        const EdgeInsets.only(top: 35, left: 35, right: 35),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            Text(
                              'ENTER OTP',
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
                                  'A 6 digit verification code has been sent to your \nregistered username'),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            maxLength: 6,
                            decoration: InputDecoration(
                              hintText: 'OTP',
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
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: MyColors.buttonColor,
                            fixedSize: const Size(100, 25),
                          ),
                          onPressed: () {
                            Get.to(const HomeScreen());
                          },
                          child: const Text(
                            'VERIFY',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
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
