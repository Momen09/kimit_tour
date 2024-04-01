import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:icon_broken/icon_broken.dart';
import 'package:kimit_tours/shared/components.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  TextEditingController emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                IconBroken.More_Square,
                color: Colors.black,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Reset password',
                style: TextStyle(
                    color: Colors.black, fontSize: 30, fontFamily: 'oxygen'),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Enter the email address associated with your account and we\'ll send an email with instructions to reset your password ',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 16,
                  fontFamily: 'oxygen',
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              customTextField(
                hintText: 'Email',
                cp: 16,
                Controller: emailController,
                validator: (email) {
                  email != null && EmailValidator.validate(email)
                      ? 'Enter a valid email'
                      : null;
                },
                prefixIcon: Icons.email_rounded,
              ),
              const SizedBox(
                height: 35,
              ),
              SizedBox(
                height: 48,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.indigoAccent),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ))),
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        resetPassword();
                      }
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.email_outlined),
                        SizedBox(
                          width: 8,
                        ),
                        Text('Reset Password'),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future resetPassword() async {
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(
        email: emailController.text,
      )
          .then((value) {
        AwesomeDialog(
                btnOkColor: Colors.indigoAccent,
                context: context,
                dialogType: DialogType.success,
                borderSide: const BorderSide(
                  color: Colors.green,
                  width: 2,
                ),
                width: 590,
                buttonsBorderRadius: const BorderRadius.all(
                  Radius.circular(2),
                ),
                dismissOnTouchOutside: true,
                dismissOnBackKeyPress: false,
                buttonsTextStyle: TextStyle(fontSize: 17),
                headerAnimationLoop: false,
                animType: AnimType.bottomSlide,
                title: 'Sent Successfully',
                titleTextStyle: const TextStyle(
                  fontSize: 17,
                  fontFamily: 'oxygen',
                  fontWeight: FontWeight.w700,
                ),
                descTextStyle:
                    const TextStyle(fontFamily: 'oxygen', fontSize: 15),
                desc:
                    'Password reset email has been sent, please check your email.',
                showCloseIcon: true,
                btnOkOnPress: () {},
                btnOkText: 'OK')
            .show();
      });
    } on FirebaseAuthException catch (e) {
      print(e.toString());
    }
  }
}
