import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:keframe/keframe.dart';
import 'package:kimit_tours/cubit/app_states.dart';
import 'package:kimit_tours/cubit/home_cubit.dart';
import 'package:kimit_tours/shared/constants.dart';
import 'package:kimit_tours/shared/drawer.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../data/data.dart';
import '../../shared/components.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<SideMenuState> sideMenuKey = GlobalKey<SideMenuState>();
    PageController pvController = PageController();
    int pvIndex = 0;
    return BlocConsumer<HomeCubit, AppStates>(
      builder: (context, state) {
        PageController recTripController =
            PageController(viewportFraction: 0.89, initialPage: 20);
        return SideMenu(
          key: sideMenuKey,
          background: secondaryColor,
          menu: const AppDrawer(),
          type: SideMenuType.shrinkNSlide,
          child: Scaffold(
            // appBar: AppBar(
            //   backgroundColor: Colors.black,
            //   title: const Text(
            //     'KEMET',
            //     style: TextStyle(
            //         color: Colors.white,
            //         fontFamily: 'mesiri',
            //         fontWeight: FontWeight.w900),
            //   ),
            //   centerTitle: true,
            //   shape: const RoundedRectangleBorder(
            //     borderRadius: BorderRadius.vertical(
            //       bottom: Radius.circular(30),
            //     ),
            //   ),
            //   actions: [
            //     Padding(
            //         padding:
            //             const EdgeInsets.symmetric(vertical: 0, horizontal: 5),
            //         child: IconButton(
            //           icon: const Icon(
            //             Icons.brightness_4,
            //           ),
            //           onPressed: () {
            //             MainCubit.get(context).themeToggle();
            //             // MainCubit.get(context).scaffoldChange();
            //           },
            //         )),
            //   ],
            //   elevation: 5,
            //   leading: IconButton(
            //     icon: const Icon(
            //       Icons.filter_list_outlined,
            //       color: Colors.white,
            //     ),
            //     onPressed: () {
            //       final state = sideMenuKey.currentState;
            //       if (state!.isOpened) {
            //         state.closeSideMenu();
            //       } else {
            //         state.openSideMenu();
            //       }
            //     },
            //   ),
            // ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ListView(
                // controller: HomeCubit.get(context).scrollController,
                children: [
                  // const SizedBox(
                  //   height: 15,
                  // ),
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 6),
                  //   child: Text(
                  //     '${greeting()} ${HomeCubit.get(context).model.name!.substring(0, 8)} , \nPlan your trip with us ..',
                  //     style: TextStyle(
                  //       fontSize: 21,
                  //       fontWeight: FontWeight.w600,
                  //       color: Theme.of(context).textTheme.labelMedium!.color,
                  //       fontFamily: 'lato',
                  //     ),
                  //   ),
                  // ),

                  const SizedBox(
                    height: 0,
                  ),
                  titleBuilder('Hot Offers', context),
                  const SizedBox(
                    height: 8,
                  ),
                  CarouselSlider(
                      items: [
                        Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    shape: BoxShape.rectangle,
                                    image: const DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          'assets/images/banner1.jpg'),
                                    ))),
                            Container(
                              padding: const EdgeInsets.only(
                                right: 6,
                                left: 6,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.6),
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                              ),
                              height: 60,
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Text(
                                    'Trip to Egypt: 8 days nile cruise tour',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                        fontFamily: 'oxygen',
                                        fontSize: 16),
                                  ),
                                  RichText(
                                      text: TextSpan(
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'oxygen',
                                      color: Colors.red,
                                      fontSize: 17,
                                    ),
                                    children: const [
                                      TextSpan(
                                          text: ' 1450 ',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              decoration:
                                                  TextDecoration.lineThrough)),
                                      TextSpan(
                                        text: ' 1100 USD',
                                      ),
                                    ],
                                  )),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    shape: BoxShape.rectangle,
                                    image: const DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          'assets/images/2banner.jpg'),
                                    ))),
                            Container(
                              padding: const EdgeInsets.only(
                                right: 6,
                                left: 6,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.6),
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                              ),
                              height: 60,
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Text(
                                    'Trip to Egypt: 8 days nile cruise tour',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                        fontFamily: 'oxygen',
                                        fontSize: 16),
                                  ),
                                  RichText(
                                      text: const TextSpan(
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'oxygen',
                                      color: Colors.red,
                                      fontSize: 17,
                                    ),
                                    children: [
                                      TextSpan(
                                          text: ' 1450 ',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              decoration:
                                                  TextDecoration.lineThrough)),
                                      TextSpan(text: ' 1100 USD'),
                                    ],
                                  )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                      options: CarouselOptions(
                        enlargeCenterPage: true,
                        height: MediaQuery.of(context).size.height * .23,
                        viewportFraction: 1,
                        initialPage: 1,
                        enableInfiniteScroll: true,
                        autoPlay: true,
                        reverse: false,
                        autoPlayInterval: const Duration(seconds: 2),
                        autoPlayAnimationDuration: const Duration(seconds: 1),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        scrollDirection: Axis.horizontal,
                      )),
                  const SizedBox(
                    height: 18,
                  ),
                  titleBuilder('Categories', context),
                  const SizedBox(
                    height: 8,
                  ),
                  SizedBox(
                    height: 140,
                    child: ListView.separated(
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: catList.length,
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          width: 20,
                        );
                      },
                      itemBuilder: (context, index) {
                        return catItem(
                          model: catList[index],
                          context: context,
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 0,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 5,
                      ),
                      titleBuilder('Explore', context),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/explore_screen');
                        },
                        child: Row(
                          children: [
                            Text(
                              'view all',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(fontSize: 18),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Icon(
                              FontAwesomeIcons.arrowRightLong,
                              color: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .color,
                              size: 20,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .23,
                    child: SizeCacheWidget(
                      estimateCount: 20,
                      child: ListView.separated(
                        cacheExtent: 500,
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        itemCount: 4,
                        separatorBuilder: (context, index) {
                          return const SizedBox(
                            width: 8,
                          );
                        },
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return FrameSeparateWidget(
                              index: index,
                              child: attractionsWidget(
                                  attractions[index], context));
                        },
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  titleBuilder('Recommended Trips', context),
                  // SizedBox(
                  //   height: 312,
                  //   child: Stack(
                  //     alignment: Alignment.center,
                  //     children: [
                  //       PageView.builder(
                  //         onPageChanged: (index) {
                  //           pvIndex = index;
                  //         },
                  //         itemCount: tripList.length,
                  //         itemBuilder: (context, index) {
                  //           return tripCard(
                  //               tripModel: tripList[index],
                  //               context: context);
                  //         },
                  //         controller: pvController,
                  //         scrollDirection: Axis.horizontal,
                  //       ),
                  //       Row(
                  //         children: [
                  //           IconButton(
                  //             onPressed: () {
                  //               pvController.previousPage(
                  //                   duration:
                  //                       const Duration(milliseconds: 500),
                  //                   curve: Curves.slowMiddle);
                  //             },
                  //             icon: const Icon(
                  //               Icons.arrow_back_ios,
                  //               color: Colors.orange,
                  //               size: 25,
                  //             ),
                  //           ),
                  //           const Spacer(),
                  //           IconButton(
                  //             onPressed: () {
                  //               pvController.nextPage(
                  //                   duration: const Duration(seconds: 1),
                  //                   curve: Curves.slowMiddle);
                  //             },
                  //             icon: const Icon(
                  //               Icons.arrow_forward_ios,
                  //               color: Colors.orange,
                  //               size: 25,
                  //             ),
                  //           ),
                  //         ],
                  //       )
                  //     ],
                  //   ),
                  // ),
                  SizedBox(
                    height: 310,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Column(
                          children: [
                            Expanded(
                                flex: 3,
                                child: Container(
                                  color: Colors.transparent,
                                )),
                            Expanded(
                                flex: 6,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: secondaryColor,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ))
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 246,
                              // width:
                              //     MediaQuery.of(context).size.width * .86,
                              child: PageView.builder(
                                controller: recTripController,
                                itemCount: 552,
                                itemBuilder: (context, index) {
                                  return recTrip(
                                      tripModel:
                                          tripList[index % tripList.length],
                                      context: context);
                                },
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            SmoothPageIndicator(
                              effect: ExpandingDotsEffect(
                                dotHeight: 10,
                                dotWidth: 9,
                                dotColor: Colors.white,
                                activeDotColor: defaultColor,
                              ),
                              controller: recTripController,
                              count: 5,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 19,
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
