import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kimit_tours/cubit/app_states.dart';
import 'package:kimit_tours/cubit/contact_cubit.dart';
import 'package:kimit_tours/shared/components.dart';
import 'package:url_launcher/url_launcher.dart';

import '../shared/constants.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ContactCubit(),
      child: BlocConsumer<ContactCubit, AppStates>(
        builder: (context, state) {
          TextEditingController emailController = TextEditingController();
          TextEditingController subjectController = TextEditingController();
          GlobalKey<FormState> formKey = GlobalKey<FormState>();

          TextEditingController descriptionController = TextEditingController();
          return Scaffold(
            appBar: AppBar(
              leading: IconButton(
                onPressed: () {
                  Navigator.of(context, rootNavigator: true).maybePop();
                },
                icon: const Icon(Icons.arrow_back_ios),
              ),
              elevation: 2,
              centerTitle: true,
              title: const Text(
                'Contact with us',
                style: TextStyle(fontFamily: 'oxygen'),
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: SingleChildScrollView(
                child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          alignment: Alignment.center,
                          child: Image.asset(
                            'assets/images/contact_us_vector.jpg',
                            scale: 9.1,
                          )),
                      customTextField(
                        cp: 10,
                        hintText: 'Email Address',
                        borderRadius: 25,
                        Controller: emailController,
                        validator: (email) {
                          if (email.isEmpty ||
                              emailController.text.contains('@')) {
                            return 'Please Enter a valid email';
                          }
                        },
                        prefixIcon: Icons.email_outlined,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      customTextField(
                        cp: 10,
                        hintText: 'Subject',
                        borderRadius: 25,
                        Controller: subjectController,
                        validator: (sub) {
                          if (sub.isEmpty) {
                            return 'Please Enter a subject name';
                          }
                        },
                        prefixIcon: Icons.message,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: descriptionController,
                        style:
                            const TextStyle(fontFamily: 'oxygen', fontSize: 15),
                        keyboardType: TextInputType.text,
                        maxLines: 5,
                        decoration: InputDecoration(
                          focusColor: Colors.indigo,
                          hintText:
                              'Text us with your problem and we will answer you as soon as possible.',
                          hintStyle: const TextStyle(
                              fontSize: 15, fontFamily: 'oxygen'),
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 18, vertical: 18),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const Spacer(),
                          ElevatedButton(
                              onPressed: () {
                                if (formKey.currentState!.validate()) {
                                  ContactCubit.get(context).sendFeedback(
                                      email: emailController.text,
                                      subject: subjectController.text,
                                      description: descriptionController.text);
                                }
                              },
                              child: const Text('Send'))
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            color: Colors.grey,
                            height: 1,
                            width: double.infinity,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            color: Colors.white,
                            child: const Text(
                              'OR',
                              style:
                                  TextStyle(fontSize: 20, fontFamily: 'oxygen'),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            iconSize: 50,
                            onPressed: () {
                              whatsContact();
                            },
                            icon: const FaIcon(
                              FontAwesomeIcons.whatsapp,
                              color: Colors.green,
                              size: 50,
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          IconButton(
                            iconSize: 50,
                            onPressed: () {
                              fbContact();
                            },
                            icon: const Icon(
                              Icons.facebook,
                              color: Colors.blue,
                              size: 50,
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          IconButton(
                            iconSize: 50,
                            onPressed: () {
                              gmailContact();
                            },
                            icon: const Icon(
                              Icons.email_outlined,
                              color: Colors.red,
                              size: 50,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
        listener: (context, state) {
          if (state is FeedbackSuccessState) {
            Fluttertoast.showToast(
                backgroundColor: secondaryColor.withOpacity(.8),
                msg: 'Thank you for your feedback we will call you soon');
          }
        },
      ),
    );
  }

  whatsContact() async {
    const whatsappUrl = "https://api.whatsapp.com/send?phone=+201011401989";
    if (await canLaunch(whatsappUrl)) {
      await launch(whatsappUrl);
    } else {
      throw "Couldn\'t launch url";
    }
  }

  fbContact() async {
    const fbUrl = "https://www.facebook.com/krym.zyad.9";
    if (await canLaunch(fbUrl)) {
      await launch(fbUrl);
    } else {
      throw "Couldn\'t launch url";
    }
  }

  gmailContact() async {
    final Uri emailUrl = Uri(
        scheme: 'mailto',
        path: 'kemet.tours.egypt@gmail.com',
        queryParameters: {'subject': 'Inquiry_about_something'});
    if (await canLaunchUrl(emailUrl)) {
      await launchUrl(emailUrl);
    } else {
      throw 'Cannot launch gmail';
    }
  }
}
