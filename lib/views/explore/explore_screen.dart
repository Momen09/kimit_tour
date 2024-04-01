import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:icon_broken/icon_broken.dart';
import 'package:kimit_tours/data/data.dart';
import 'package:kimit_tours/shared/drawer.dart';
import 'package:kimit_tours/views/attraction_details_screen.dart';
import 'package:scroll_app_bar/scroll_app_bar.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

import '../../shared/constants.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  final GlobalKey<SideMenuState> menuKey = GlobalKey<SideMenuState>();
  final controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SideMenu(
      key: menuKey,
      background: secondaryColor,
      menu: const AppDrawer(),
      type: SideMenuType.shrinkNSlide,
      child: Scaffold(
        appBar: ScrollAppBar(
            controller: controller,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(IconBroken.Arrow___Left),
            ),
            title: const Text(
              'Egypt Attractions',
              style: TextStyle(
                fontFamily: 'oxygen',
                fontWeight: FontWeight.w500,
              ),
            ),
            centerTitle: true,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(30),
              ),
            )),
        body: ListView.separated(
          controller: controller,
          separatorBuilder: (context, index) {
            return const SizedBox(
              height: 15,
            );
          },
          itemCount: attractions.length,
          padding: const EdgeInsets.all(10),
          itemBuilder: (context, index) {
            return Bounceable(
              onTap: () {},
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AttractionDetailsScreen()));
                },
                child: Container(
                  alignment: Alignment.bottomLeft,
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          stops: const [0.4, 1],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.black.withOpacity(0),
                            Colors.black.withOpacity(0.8),
                          ]),
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          attractions[index].imageUrl,
                        ),
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          attractions[index].name,
                          style: const TextStyle(
                            shadows: [
                              BoxShadow(
                                  offset: Offset(1.3, 2),
                                  spreadRadius: 10,
                                  blurRadius: 5),
                            ],
                            color: Colors.white,
                            fontFamily: 'oxygen',
                            fontSize: 21,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on_outlined,
                              color: Colors.white,
                              size: 18,
                              shadows: [
                                BoxShadow(
                                    offset: Offset(1, 3),
                                    spreadRadius: 8,
                                    blurRadius: 15),
                              ],
                            ),
                            Text(
                              attractions[index].location,
                              style: const TextStyle(
                                shadows: [
                                  BoxShadow(
                                      offset: Offset(1.3, 2),
                                      spreadRadius: 10,
                                      blurRadius: 5),
                                ],
                                color: Colors.white,
                                fontFamily: 'oxygen',
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
