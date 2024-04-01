import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:kimit_tours/network/local/cache_helper.dart';
import 'package:kimit_tours/views/password_reset/reset_password_screen.dart';
import 'package:kimit_tours/views/register/register_screen.dart';
import 'package:page_transition/page_transition.dart';
import '../../cubit/app_states.dart';
import '../../cubit/login_cubit.dart';
import '../../shared/components.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passController = TextEditingController();
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocConsumer<LoginCubit, AppStates>(
        listener: (context, state) {
          if (state is LoginSuccessState) {
            CacheHelper.saveData(key: 'signed', value: true).then((value) {
              Navigator.pushNamed(context, '/home_layout');
            });
          }
        },
        builder: (context, state) {
          LoginCubit cubit = LoginCubit.get(context);
          return Scaffold(
            body: SafeArea(
              child: Stack(
                children: [
                  formBackground(
                      welcomeTitle: 'Welcome again',
                      welcomeHint: 'Login now and live the experience .. ',
                      imgPath: 'assets/images/login.jpg'),
                  layoutForm(
                    Column(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(),
                        ),
                        Transform.translate(
                          offset: const Offset(0, 37),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: Card(
                                  elevation: 10,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0),
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    // height: MediaQuery.of(context).size.height *
                                    //     0.45,
                                    width:
                                        MediaQuery.of(context).size.width * 0.9,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 30, horizontal: 15),
                                      child: Form(
                                        key: formKey,
                                        child: SingleChildScrollView(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  const Text(
                                                    'LOGIN',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 30,
                                                    ),
                                                  ),
                                                  TextButton(
                                                    onPressed: () {
                                                      Navigator.push(
                                                        context,
                                                        PageTransition(
                                                          type:
                                                              PageTransitionType
                                                                  .rightToLeft,
                                                          alignment:
                                                              Alignment.center,
                                                          duration:
                                                              const Duration(
                                                            milliseconds: 450,
                                                          ),
                                                          child:
                                                              const RegisterScreen(),
                                                        ),
                                                      );
                                                    },
                                                    child: const Text(
                                                      'SIGN UP',
                                                      style: TextStyle(
                                                        color: Colors.grey,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontSize: 18,
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 12,
                                              ),
                                              customField(
                                                  name: 'Email',
                                                  controller: emailController,
                                                  prefixIcon: Icons.email,
                                                  validate: (value) {
                                                    if (value!.isEmpty) {
                                                      return 'You must write your E-mail to login';
                                                    }
                                                    return null;
                                                  }),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              customField(
                                                  controller: passController,
                                                  suffixIcon: IconButton(
                                                    onPressed: () {
                                                      cubit.visibilityHandle();
                                                    },
                                                    icon: Icon(cubit.isVisible
                                                        ? Icons.visibility_off
                                                        : Icons.visibility),
                                                  ),
                                                  obsecureText: cubit.isVisible,
                                                  name: 'Password',
                                                  prefixIcon: Icons.lock,
                                                  validate: (value) {
                                                    if (value!.isEmpty) {
                                                      return 'You must write your password to login';
                                                    }
                                                    return null;
                                                  }),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              Center(
                                                child: TextButton(
                                                  onPressed: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              const ResetPasswordScreen()),
                                                    );
                                                  },
                                                  child: const Text(
                                                    'Forget Password?',
                                                    style: TextStyle(
                                                      fontFamily: 'karla',
                                                      color: Colors.grey,
                                                      fontSize: 18,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 4,
                                              ),
                                              submitButton(
                                                  submitText: 'LOGIN',
                                                  onTap: () {
                                                    if (formKey.currentState!
                                                        .validate()) {
                                                      cubit.userLogin(
                                                        email: emailController
                                                            .text,
                                                        password:
                                                            passController.text,
                                                      );
                                                    }
                                                  })
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 60,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Or login with',
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
      ),
    );
  }
}
