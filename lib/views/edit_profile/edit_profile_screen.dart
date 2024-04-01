import 'dart:io';

import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icon_broken/icon_broken.dart';

import '../../cubit/app_states.dart';
import '../../cubit/home_cubit.dart';
import '../../models/user_model.dart';
import '../../shared/components.dart';

class EditProfileScreen extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  TextEditingController bioController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, AppStates>(
      builder: (context, state) {
        UserModel userModel = HomeCubit.get(context).model!;
        File? profileImage = HomeCubit.get(context).profileImage;
        File? coverImage = HomeCubit.get(context).coverImage;
        nameController.text = userModel.name!;
        bioController.text = userModel.bio!;
        phoneController.text = userModel.phone ?? '';
        return Scaffold(
          backgroundColor: Colors.white,
          appBar:
              defaultAppbar(context: context, title: 'Edit Profile', actions: [
            Padding(
              padding: const EdgeInsets.only(right: 18),
              child: TextButton(
                onPressed: () {
                  HomeCubit.get(context).updateUser(
                    name: nameController.text,
                    bio: bioController.text,
                    phone: phoneController.text,
                  );
                },
                child: const Text(
                  'UPDATE',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.indigoAccent),
                ),
              ),
            ),
          ]),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ConditionalBuilder(
                      condition: state is UserUpdateLoadingState,
                      builder: (context) {
                        return const LinearProgressIndicator();
                      },
                      fallback: null),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 190,
                    child: Stack(
                      alignment: AlignmentDirectional.bottomCenter,
                      children: [
                        Align(
                          alignment: AlignmentDirectional.topCenter,
                          child: Stack(
                            alignment: AlignmentDirectional.topEnd,
                            children: [
                              Container(
                                width: double.infinity,
                                height: 150,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(5),
                                      topRight: Radius.circular(5),
                                    ),
                                    image: DecorationImage(
                                      image: coverImage == null
                                          ? NetworkImage(userModel.cover!)
                                          : FileImage(File(coverImage.path))
                                              as ImageProvider,
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              IconButton(
                                onPressed: () {
                                  HomeCubit.get(context).getCoverImage();
                                },
                                icon: const CircleAvatar(
                                  radius: 18.0,
                                  backgroundColor: Colors.white,
                                  child: Icon(
                                    IconBroken.Camera,
                                    size: 19.0,
                                    color: Colors.indigoAccent,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircularProfileAvatar(
                              'https://avatars0.githubusercontent.com/u/8264639?s=460&v=4',
                              borderWidth: 3,
                              borderColor: Colors.white,
                              radius: 56,
                              imageFit: BoxFit.fitWidth,
                              child: profileImage == null
                                  ? Image.network(
                                      userModel.image!,
                                      fit: BoxFit.cover,
                                    )
                                  : Image.file(
                                      profileImage,
                                      fit: BoxFit.cover,
                                    ),
                            ),
                            Transform.translate(
                              offset: const Offset(2, 5),
                              child: IconButton(
                                onPressed: () {
                                  HomeCubit.get(context).getProfileImage();
                                },
                                icon: const CircleAvatar(
                                  radius: 15.0,
                                  backgroundColor: Colors.indigoAccent,
                                  child: Icon(
                                    IconBroken.Camera,
                                    size: 16.0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  TextFormField(
                    controller: nameController,
                    style: const TextStyle(
                        fontSize: 17,
                        fontFamily: 'oxygen',
                        fontWeight: FontWeight.w500),
                    decoration: const InputDecoration(
                      labelText: 'Name',
                      contentPadding: EdgeInsets.all(17),
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(
                        IconBroken.Profile,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  TextFormField(
                    controller: bioController,
                    textAlignVertical: TextAlignVertical.bottom,
                    style: const TextStyle(
                        fontSize: 17,
                        fontFamily: 'oxygen',
                        fontWeight: FontWeight.w500),
                    decoration: const InputDecoration(
                      labelText: 'Bio',
                      contentPadding: EdgeInsets.all(17),
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(IconBroken.Info_Square),
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  TextFormField(
                    controller: phoneController,
                    style: const TextStyle(
                        overflow: TextOverflow.ellipsis,
                        fontSize: 17,
                        fontFamily: 'oxygen',
                        fontWeight: FontWeight.w500),
                    decoration: const InputDecoration(
                      labelText: 'Phone',
                      contentPadding: EdgeInsets.all(17),
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(IconBroken.Call),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      listener: (context, state) {},
    );
  }
}
