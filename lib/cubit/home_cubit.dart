import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kimit_tours/models/user_model.dart';
import 'package:kimit_tours/shared/constants.dart';
import 'package:kimit_tours/views/blogs_screen.dart';
import 'package:kimit_tours/views/favourite_screen.dart';

import '../views/home/home_page.dart';
import '../views/menu_screen.dart';
import '../views/profile/settings.dart';
import 'app_states.dart';

class HomeCubit extends Cubit<AppStates> {
  HomeCubit() : super(AppInitialState());

  static HomeCubit get(context) => BlocProvider.of(context);

  ScrollController scrollController = ScrollController();

  UserModel? model;
  void getUserData() async {
    emit(GetUserLoadState());
    await FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get()
        .then((value) {
      model = UserModel.fromJson(value.data()!);
      userModel = UserModel.fromJson(value.data()!);
      if (kDebugMode) {
        print(value.data());
      }
      emit(GetUserSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(GetUserErrorState(error.toString()));
    });
  }

  int currentIndex = 0;
  bool isVisible = true;
  List layoutPages = const [
    HomePage(),
    MenuScreen(),
    WishlistScreen(),
    FeedsScreen(),
    SettingsScreen(),
  ];
  List titles = const [
    'Home',
    'Menu',
    'WishList',
    'Blogs',
    'User Settings',
  ];

  void pageChange(index) {
    currentIndex = index;
    emit(BnbToggleState());
  }

  File? profileImage;
  File? coverImage;
  ImagePicker picker = ImagePicker();

  Future<void> getProfileImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      profileImage = File(pickedFile.path);
      emit(ProfileImagePickSuccessState());
    } else {
      print('No selected Images');
      emit(ProfileImagePickErrorState());
    }
  }

  Future<void> getCoverImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      coverImage = File(pickedFile.path);
      emit(CoverImagePickSuccessState());
    } else {
      print('No selected Images');
      emit(CoverImagePickErrorState());
    }
  }

  String profileImageUrl = '';
  String coverImageUrl = '';

  void profileImageUpload() {
    firebase_storage.FirebaseStorage.instance
        .ref()
        .child('users/${Uri.file(profileImage!.path).pathSegments.last}')
        .putFile(profileImage!)
        .then((value) {
      value.ref.getDownloadURL().then((value) {
        emit(ProfileImageUploadErrorState());
        print(value);
      }).catchError((error) {
        emit(ProfileImageUploadErrorState());
        print(error.toString());
      });
    }).catchError((error) {
      emit(ProfileImageUploadErrorState());

      print(error.toString());
    });
  }

  void coverImageUpload() {
    firebase_storage.FirebaseStorage.instance
        .ref()
        .child('users/${Uri.file(coverImage!.path).pathSegments.last}')
        .putFile(coverImage!)
        .then((value) {
      value.ref.getDownloadURL().then((value) {
        emit(CoverImageUploadErrorState());
        print(value);
      }).catchError((error) {
        emit(CoverImageUploadErrorState());
        print(error.toString());
      });
    }).catchError((error) {
      emit(CoverImageUploadErrorState());
      print(error.toString());
    });
  }

  void updateUser({
    required String name,
    required String bio,
    required String phone,
  }) {
    emit(UserUpdateLoadingState());
    if (profileImage != null) {
      profileImageUpload();
    } else if (coverImage != null) {
      coverImageUpload();
    } else if (profileImage != null && coverImage != null) {
      profileImageUpload();
      coverImageUpload();
    } else {
      UserModel model = UserModel(
        name: name,
        uId: userModel!.uId,
        phone: phone,
        bio: bio,
        email: userModel!.email,
        image: userModel!.image,
        cover: userModel!.cover,
      );
      FirebaseFirestore.instance
          .collection('users')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .update(model.toMap())
          .then(
        (value) {
          emit(UserUpdateSuccessState());
          getUserData();
        },
      ).catchError(
        (error) {
          emit(UserUpdateErrorState());
        },
      );
    }
  }
}
