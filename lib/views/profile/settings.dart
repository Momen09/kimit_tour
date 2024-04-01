import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icon_broken/icon_broken.dart';
import 'package:kimit_tours/cubit/app_states.dart';
import 'package:kimit_tours/cubit/home_cubit.dart';
import 'package:kimit_tours/views/edit_profile/edit_profile_screen.dart';
import 'package:page_transition/page_transition.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, AppStates>(
        builder: (context, state) {
          var model = HomeCubit.get(context).model;
          return Scaffold(
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(7.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 195,
                      child: Stack(
                        alignment: AlignmentDirectional.bottomCenter,
                        children: [
                          Align(
                            alignment: AlignmentDirectional.topCenter,
                            child: Container(
                              width: double.infinity,
                              height: 150,
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(5),
                                    topRight: Radius.circular(5),
                                  ),
                                  image: DecorationImage(
                                    image: NetworkImage(model!.cover ??
                                        'https://i.insider.com/5d23698121a86105bd7a34ba?width=1136&format=jpeg'),
                                    fit: BoxFit.cover,
                                  )),
                            ),
                          ),
                          CircularProfileAvatar(
                            'https://avatars0.githubusercontent.com/u/8264639?s=460&v=4',
                            borderWidth: 3,
                            borderColor: Colors.white,
                            radius: 53,
                            child: Image.network(
                              model.image ??
                                  'https://previews.123rf.com/images/kritchanut/kritchanut1406/kritchanut140600093/29213195-male-silhouette-avatar-profile-picture.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      model.name!,
                      style: TextStyle(
                          color:
                              Theme.of(context).textTheme.labelMedium!.color!,
                          fontSize: 21,
                          fontFamily: 'oxygen',
                          fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      model.bio!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontFamily: 'oxygen',
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {},
                              child: Column(
                                children: [Text('100'), Text('Posts')],
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {},
                              child: Column(
                                children: [Text('100'), Text('Posts')],
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {},
                              child: Column(
                                children: [Text('100'), Text('Posts')],
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {},
                              child: Column(
                                children: [Text('100'), Text('Posts')],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 6,
                          child: SizedBox(
                            height: 40,
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                side: BorderSide(
                                    width: 1.0,
                                    color: Theme.of(context)
                                        .textTheme
                                        .labelMedium!
                                        .color!),
                              ),
                              onPressed: () {},
                              child: const Text(
                                'Add Post',
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 40,
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                side: BorderSide(
                                    width: 1.0,
                                    color: Theme.of(context)
                                        .textTheme
                                        .labelMedium!
                                        .color!),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.scale,
                                      alignment: Alignment.center,
                                      duration: const Duration(
                                        milliseconds: 650,
                                      ),
                                      child: EditProfileScreen(),
                                    ));
                              },
                              child: const Icon(
                                IconBroken.Edit,
                                size: 18,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        listener: (context, state) {});
  }
}
