import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:montessori/screens/authentication/forgot_password.dart';
import 'package:montessori/screens/home/home_screen.dart';
import 'package:montessori/utils/colors.dart';
import '../../utils/responsive.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool _validate = true;

  final FirebaseAuth _auth = FirebaseAuth.instance;
  void signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      // Handle successful sign-in
      User? user = userCredential.user;
      Get.off(() => const HomeScreen());
      // ...
    } catch (e) {
      // Handle sign-in errors
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Something went wrong'),
        backgroundColor: Colors.red,
        elevation: 1.0,
      ));
      // ...
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ScreenSize.init(context); // Initialize screen size variables
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                                "SIGN IN",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                          Form(
                            key: _formKey,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: TextFormField(
                                    onChanged: (value) => _validate == false,
                                    controller: emailController,
                                    keyboardType: TextInputType.emailAddress,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        _validate == false;
                                        return 'Username is required';
                                      }
                                      _validate = true;
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                      errorText: _validate
                                          ? null
                                          : 'Username is required',
                                      errorBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.red,
                                              style: BorderStyle.solid),
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      // prefix: const Icon(
                                      //     Icons.alternate_email_outlined),
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
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            controller: passwordController,
                            keyboardType: TextInputType.text,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Enter your password.';
                              }
                              return null;
                            },
                            obscureText: true,
                            decoration: InputDecoration(
                              errorBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red)),
                              // prefix: const Icon(Icons.key_rounded),
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
                                  if (_formKey.currentState!.validate()) {
                                    return signInWithEmailAndPassword(
                                        emailController.text.toString(),
                                        passwordController.text.toString());
                                  }
                                  // Navigator.pushNamed(context, Routes.eventDetails);
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
                          GestureDetector(
                            onTap: () {
                              Get.to(const ForgotPasswordScreen());
                            },
                            child: const Text(
                              'Forgot Password?',
                              style: TextStyle(color: Colors.blue),
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
      ),
    );
  }
}
