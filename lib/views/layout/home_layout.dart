import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icon_broken/icon_broken.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

import '../../cubit/app_states.dart';
import '../../cubit/home_cubit.dart';
import '../../cubit/main_cubit.dart';
import '../../shared/constants.dart';
import '../../shared/drawer.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, AppStates>(
        builder: (context, state) {
          HomeCubit cubit = HomeCubit.get(context);
          final GlobalKey<SideMenuState> sideMenuKey =
              GlobalKey<SideMenuState>();

          return SideMenu(
            key: sideMenuKey,
            background: secondaryColor,
            menu: const AppDrawer(),
            type: SideMenuType.shrinkNSlide,
            child: Scaffold(
              appBar: AppBar(
                actions: [
                  Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 5),
                      child: IconButton(
                        icon: Icon(
                          Icons.brightness_4,
                          color: Theme.of(context)
                              .appBarTheme
                              .titleTextStyle!
                              .color,
                        ),
                        onPressed: () {
                          MainCubit.get(context).themeToggle();
                          // MainCubit.get(context).scaffoldChange();
                        },
                      )),
                ],
                elevation: 0,
                leading: IconButton(
                  icon: Icon(
                    Icons.menu,
                    color: Theme.of(context).appBarTheme.titleTextStyle!.color,
                  ),
                  onPressed: () {
                    final state = sideMenuKey.currentState;
                    if (state!.isOpened) {
                      state.closeSideMenu();
                    } else {
                      state.openSideMenu();
                    }
                  },
                ),
                title: Text(
                  cubit.titles[cubit.currentIndex],
                ),
              ),
              body: cubit.layoutPages[cubit.currentIndex],
              bottomNavigationBar: BottomNavigationBar(
                selectedItemColor: Theme.of(context)
                    .bottomNavigationBarTheme
                    .selectedItemColor,
                currentIndex: cubit.currentIndex,
                elevation: 0,
                backgroundColor:
                    Theme.of(context).bottomNavigationBarTheme.backgroundColor,
                onTap: cubit.pageChange,
                type: BottomNavigationBarType.fixed,
                items: const [
                  BottomNavigationBarItem(
                      label: 'Home', icon: Icon(IconBroken.Home)),
                  BottomNavigationBarItem(
                      label: 'Menus',
                      icon: Icon(
                        Icons.apps,
                      )),
                  BottomNavigationBarItem(
                      label: 'Wishlist',
                      icon: Icon(
                        IconBroken.Heart,
                      )),
                  BottomNavigationBarItem(
                      label: 'Blogs',
                      icon: Icon(
                        IconBroken.Image_2,
                      )),
                  BottomNavigationBarItem(
                      label: 'Settings',
                      icon: Icon(
                        IconBroken.Setting,
                      )),
                ],
              ),
            ),
          );
        },
        listener: (context, state) {});
  }
}
