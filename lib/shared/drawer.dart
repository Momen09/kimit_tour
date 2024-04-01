import 'package:flutter/material.dart';
import 'package:icon_broken/icon_broken.dart';
import 'package:kimit_tours/shared/components.dart';
import 'package:kimit_tours/shared/constants.dart';
import 'package:kimit_tours/views/about_screen.dart';
import 'package:kimit_tours/views/layout/home_layout.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  IconData trailing = Icons.list;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 50.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30.0,
                  backgroundImage: NetworkImage(userModel!.image ??
                      'https://previews.123rf.com/images/kritchanut/kritchanut1406/kritchanut140600093/29213195-male-silhouette-avatar-profile-picture.jpg'),
                ),
                const SizedBox(height: 16.0),
                Row(
                  children: [
                    Text(
                      userModel!.name!,
                      style:
                          const TextStyle(color: Colors.white, fontSize: 18.5),
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'edit_profile_screen');
                        },
                        icon: const Icon(
                          IconBroken.Edit,
                          color: Colors.white,
                          size: 16,
                        )),
                  ],
                ),
                const SizedBox(height: 20.0),
              ],
            ),
          ),
          ListTile(
            onTap: () {
              navigateReplacement(context: context, widget: const HomeLayout());
            },
            leading: Icon(IconBroken.Home, size: 25.0, color: defaultColor),
            title: const Text(
              "Home",
              style: TextStyle(fontFamily: 'oxygen', fontSize: 18),
            ),
            textColor: Colors.white,
            dense: true,
          ),
          ExpansionTile(
            onExpansionChanged: (c) {
              if (c) {
                setState(() {
                  trailing = Icons.arrow_drop_up;
                });
              } else {
                setState(() {
                  trailing = Icons.arrow_drop_down_sharp;
                });
              }
            },
            collapsedTextColor: Colors.white,
            trailing: Container(
                margin: const EdgeInsets.only(right: 30),
                child: Icon(
                  trailing,
                  color: Colors.white,
                )),
            leading: Icon(
              Icons.list,
              color: defaultColor,
            ),
            title: const Text(
              'Egypt tours',
              style: TextStyle(fontSize: 18, fontFamily: 'oxygen'),
            ),
            children: <Widget>[
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.monetization_on,
                    size: 20.0, color: Colors.white),
                title: const Text("Tour Packages"),
                textColor: Colors.white,
                dense: true,

                // padding: EdgeInsets.zero,
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.shopping_cart,
                    size: 20.0, color: Colors.white),
                title: const Text("Short excursions"),
                textColor: Colors.white,
                dense: true,

                // padding: EdgeInsets.zero,
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.star_border,
                    size: 20.0, color: Colors.white),
                title: const Text("Favorites"),
                textColor: Colors.white,
                dense: true,

                // padding: EdgeInsets.zero,
              ),
              ListTile(
                onTap: () {},
                leading:
                    const Icon(Icons.settings, size: 20.0, color: Colors.white),
                title: const Text("Settings"),
                textColor: Colors.white,
                dense: true,

                // padding: EdgeInsets.zero,
              ),
            ],
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, '/explore_screen');
            },
            leading: Icon(IconBroken.Location, size: 25.0, color: defaultColor),
            title: const Text(
              "Discover Egypt",
              style: TextStyle(fontSize: 18, fontFamily: 'oxygen'),
            ),
            textColor: Colors.white,
            dense: true,
          ),
          ListTile(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AboutScreen()));
            },
            leading:
                Icon(IconBroken.Info_Circle, size: 25.0, color: defaultColor),
            title: const Text(
              "About Us",
              style: TextStyle(fontSize: 18, fontFamily: 'oxygen'),
            ),
            textColor: Colors.white,
            dense: true,
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, '/contact_screen');
            },
            leading: Icon(IconBroken.Call, size: 25.0, color: defaultColor),
            title: const Text(
              "Contact Us",
              style: TextStyle(fontSize: 18, fontFamily: 'oxygen'),
            ),
            textColor: Colors.white,
            dense: true,
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, '/chat_bot');
            },
            leading: Icon(Icons.chat_rounded, size: 25.0, color: defaultColor),
            title: const Text(
              "Chat with bot",
              style: TextStyle(fontSize: 18, fontFamily: 'oxygen'),
            ),
            textColor: Colors.white,
            dense: true,
          ),
        ],
      ),
    );
  }
}
