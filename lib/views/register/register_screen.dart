import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:kimit_tours/network/local/cache_helper.dart';
import 'package:page_transition/page_transition.dart';

import '../../cubit/app_states.dart';
import '../../cubit/register_cubit.dart';
import '../../shared/components.dart';
import '../login/login_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passController = TextEditingController();
    TextEditingController confirmController = TextEditingController();
    TextEditingController countryController = TextEditingController();
    return BlocProvider(
      create: (context) => RegisterCubit(),
      child: BlocConsumer<RegisterCubit, AppStates>(
        builder: (context, state) {
          RegisterCubit cubit = RegisterCubit.get(context);

          return Scaffold(
            body: SafeArea(
              child: Stack(
                children: [
                  formBackground(
                      welcomeHint: 'Register now and live the experience ..',
                      welcomeTitle: 'Welcome',
                      imgPath: 'assets/images/register.jpg'),
                  layoutForm(
                    Column(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(),
                        ),
                        Center(
                          child: Card(
                            elevation: 9,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0)),
                            child: Container(
                              padding: const EdgeInsets.all(18),
                              // height: screenSize.height * 0.55,
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: Form(
                                key: formKey,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              PageTransition(
                                                type: PageTransitionType
                                                    .leftToRight,
                                                alignment: Alignment.center,
                                                duration: const Duration(
                                                  milliseconds: 450,
                                                ),
                                                child: const LoginScreen(),
                                              ),
                                            );
                                          },
                                          child: const Text(
                                            'LOGIN',
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 18,
                                            ),
                                          ),
                                        ),
                                        const Text(
                                          'SIGN UP',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 28,
                                          ),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    customField(
                                      name: 'Name',
                                      prefixIcon: Icons.person,
                                      validate: (value) {
                                        if (value!.isEmpty) {
                                          return 'Please enter your name to sign up.';
                                        }
                                        return null;
                                      },
                                      controller: nameController,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    customField(
                                      name: 'Email',
                                      prefixIcon: Icons.mail,
                                      validate: (value) {
                                        if (value!.isEmpty) {
                                          return 'Email is required to sign up.';
                                        }

                                        if (value.contains('@') == false) {
                                          return 'Please Enter valid email';
                                        }
                                        return null;
                                      },
                                      controller: emailController,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    customField(
                                      obsecureText: true,
                                      name: 'Password',
                                      prefixIcon: Icons.lock,
                                      validate: (value) {
                                        if (value!.isEmpty) {
                                          return 'You must write your password to login';
                                        }
                                        return null;
                                      },
                                      controller: passController,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    customField(
                                      obsecureText: true,
                                      name: 'Confirm Password',
                                      prefixIcon: Icons.lock,
                                      validate: (value) {
                                        if (value != passController.text) {
                                          return 'Password and confirm password doesn\'t match!';
                                        }
                                        return null;
                                      },
                                      controller: confirmController,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const SizedBox(
                                      height: 18,
                                    ),
                                    state is RegisterLoadingState
                                        ? const Center(
                                            child: CircularProgressIndicator(
                                              color: Colors.indigoAccent,
                                            ),
                                          )
                                        : SizedBox(
                                            child: submitButton(
                                                submitText: 'REGISTER',
                                                onTap: () {
                                                  if (formKey.currentState!
                                                      .validate()) {
                                                    cubit.userRegister(
                                                      name: nameController.text,
                                                      email:
                                                          emailController.text,
                                                      password:
                                                          passController.text,
                                                      country: 's',
                                                    );
                                                  } else {}
                                                }),
                                          ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Or enter with',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 17,
                                      fontFamily: 'oxygen'),
                                ),
                                const SizedBox(
                                  height: 25,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 110,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          color: Colors.indigo,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Center(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: const [
                                            Icon(
                                              FontAwesome5.facebook_f,
                                              color: Colors.white,
                                              size: 18,
                                            ),
                                            SizedBox(
                                              width: 4,
                                            ),
                                            Text(
                                              'facebook',
                                              style: TextStyle(
                                                  fontFamily: 'oxygen',
                                                  color: Colors.white,
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Container(
                                      width: 110,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Center(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: const [
                                            Icon(
                                              FontAwesome5.google,
                                              color: Colors.white,
                                              size: 18,
                                            ),
                                            SizedBox(
                                              width: 4,
                                            ),
                                            Text(
                                              'gmail',
                                              style: TextStyle(
                                                  fontFamily: 'Montserrat',
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 14),
                                            ),
                                          ],
                                        ),
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
            ),
          );
        },
        listener: (context, state) {
          if (state is CreateUserSuccessState) {
            CacheHelper.saveData(key: 'signed', value: true).then((value) {
              Navigator.pushNamed(context, '/home_layout');
            });
          }
        },
      ),
    );
  }
}
