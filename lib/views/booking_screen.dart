import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:icon_broken/icon_broken.dart';
import 'package:intl/intl.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:kimit_tours/shared/components.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController dateController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController countryController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Book Your Trip',
          style: TextStyle(fontWeight: FontWeight.w400, fontFamily: 'oxygen'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Fill out the form and we will get back to you soon ..',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'oxygen',
                    fontSize: 20),
              ),
              const SizedBox(
                height: 20,
              ),
              customTextField(
                  Controller: dateController,
                  title: 'Arrival Date',
                  validator: (s) {},
                  prefixIcon: IconBroken.Calendar,
                  fieldTapping: () {
                    showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2020 - 10 - 10),
                      lastDate: DateTime(2099 - 3 - 3),
                    ).then((value) => dateController.text =
                        DateFormat.yMMMd().format(value!));
                  }),
              const SizedBox(
                height: 20,
              ),
              customTextField(
                title: 'Email Address',
                prefixIcon: Icons.email,
                validator: (s) {
                  if (s!.isEmpty) {
                    return 'Email is required for booking';
                  }
                },
                Controller: emailController,
              ),
              const SizedBox(
                height: 20,
              ),
              IntlPhoneField(
                controller: countryController,
                decoration: const InputDecoration(
                  labelText: 'Phone Number',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              customTextField(
                title: 'Trip members count',
                prefixIcon: Icons.email,
                validator: (s) {
                  if (s!.isEmpty) {
                    return 'Email is required for booking';
                  }
                },
                Controller: emailController,
              ),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                width: double.infinity,
                height: 46,
                child: ElevatedButton(
                    onPressed: () {
                      Fluttertoast.showToast(msg: 'We will response soon');
                    },
                    child: Text('Book!')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
