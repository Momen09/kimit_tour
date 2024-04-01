import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kimit_tours/shared/constants.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../network/local/cache_helper.dart';

class OnBoardingModel {
  final String title;
  final String imageUrl;

  const OnBoardingModel(this.title, this.imageUrl);
}

List<OnBoardingModel> pages = const [
  OnBoardingModel('Explore new places in Egypt with us',
      'assets/images/first_onboarding.jpg'),
  OnBoardingModel(
      'whatever you wish .. packages, short excursion, day tours and more.',
      'assets/images/second_onboarding.jpg'),
  OnBoardingModel(
      'start your experience , check our trips, then book your favourite package.',
      'assets/images/last_onboarding.jpg'),
];

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  action() {
    CacheHelper.saveData(key: 'onboarding', value: true);
    Navigator.pushReplacementNamed(context, 'login_screen');
  }

  bool isLast = false;
  PageController pageviewController = PageController();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.blueGrey,
      //or set color with: Color(0xFF0000FF)
    )); //status s
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            PageView.builder(
              onPageChanged: (int index) {
                if (index == pages.length - 1) {
                  setState(() {
                    isLast = true;
                  });
                } else {
                  isLast = false;
                }
              },
              controller: pageviewController,
              itemCount: 3,
              itemBuilder: (context, index) {
                return singlePage(
                  context: context,
                  model: pages[index],
                );
              },
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 20, left: 15),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            height: 43,
                            child: ElevatedButton(
                              onPressed: () {
                                action();
                              },
                              style: ElevatedButton.styleFrom(
                                shape: (RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12))),
                                primary: secondaryColor,
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(right: 6, left: 6),
                                child: Row(
                                  children: const [
                                    Text(
                                      'SKIP',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'oxygen',
                                          fontWeight: FontWeight.w800),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.arrow_right_alt_outlined,
                                      size: 30,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          SizedBox(
                            width: 45,
                            height: 50,
                            child: FittedBox(
                              child: FloatingActionButton(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      width: 5,
                                      color: Colors.black54.withOpacity(0.4)),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                onPressed: () {
                                  if (isLast) {
                                    action();
                                  } else {
                                    pageviewController.nextPage(
                                      duration: const Duration(
                                        seconds: 1,
                                      ),
                                      curve: Curves.decelerate,
                                    );
                                  }
                                },
                                child: Icon(
                                  Icons.play_arrow_rounded,
                                  color: secondaryColor,
                                  size: 36,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 65,
                      ),
                      SmoothPageIndicator(
                          controller: pageviewController,
                          count: pages.length,
                          effect: ExpandingDotsEffect(
                            dotHeight: 8,
                            dotWidth: 12,
                            dotColor: Colors.white,
                            activeDotColor: secondaryColor,
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget singlePage({
  required OnBoardingModel model,
  required BuildContext context,
}) {
  return Stack(
    children: [
      Image(
        image: AssetImage(model.imageUrl),
        alignment: Alignment.center,
        height: double.infinity,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
      Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.black.withOpacity(0.43),
      ),
      Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .58,
          ),
          Padding(
            padding: const EdgeInsets.all(11.0),
            child: AutoSizeText(
              model.title,
              style: const TextStyle(
                  color: Colors.white,
                  fontFamily: 'oxygen',
                  fontSize: 38,
                  fontWeight: FontWeight.w900,
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(3.0, 5.0),
                      blurRadius: 9.0,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ]),
              maxLines: 3,
            ),
          ),
        ],
      )
    ],
  );
}
