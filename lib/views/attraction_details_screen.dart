import 'package:flutter/material.dart';
import 'package:icon_broken/icon_broken.dart';
import 'package:kimit_tours/shared/constants.dart';

import 'attraction_location.dart';

class AttractionDetailsScreen extends StatefulWidget {
  @override
  _AttractionDetailsScreenState createState() =>
      _AttractionDetailsScreenState();
}

class _AttractionDetailsScreenState extends State<AttractionDetailsScreen>
    with AutomaticKeepAliveClientMixin<AttractionDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          physics: const NeverScrollableScrollPhysics(),
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 250.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    title: const Text("Giza Pyramids",
                        style: TextStyle(
                          shadows: [
                            BoxShadow(
                              offset: Offset(1, 2),
                            ),
                          ],
                          color: Colors.white,
                          fontFamily: 'oxygen',
                          fontWeight: FontWeight.w700,
                          fontSize: 22.0,
                        )),
                    background: Image.network(
                      "https://wallpaperaccess.com/full/303316.jpg",
                      fit: BoxFit.cover,
                    )),
              ),
              SliverPersistentHeader(
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    isScrollable: false,
                    labelStyle: TextStyle(
                      color: secondaryColor,
                      fontFamily: 'oxygen',
                      fontWeight: FontWeight.w600,
                    ),
                    tabs: [
                      Tab(
                        icon: Icon(Icons.info),
                        text: "Details",
                      ),
                      Tab(
                        icon: Icon(
                          IconBroken.Location,
                          color: defaultColor,
                        ),
                        text: 'Location',
                      ),
                      const Tab(
                        icon: Icon(
                          Icons.airplane_ticket_sharp,
                          color: Colors.orange,
                        ),
                        text: 'Trips',
                      ),
                    ],
                  ),
                ),
                pinned: true,
              ),
            ];
          },
          body: const TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              Text(
                "Middle Kingdom to the Ptolemaic Period The temple complex is made up of several different buildings and structures, including the Great Temple of Amun, the Temple of Khonsu, and the Temple of Ptah. The most impressive feature of the complex is the Great Temple of Amun, which features a massive hypostyle hall with 134 columns that reach a height of over 30 meters. The temple also contains many other features such as obelisks, statues, and inscriptions that provide insights into the beliefs and practices of the ancient Egyptians. The temple also played an important role in the religious and political life of ancient Egypt, serving as a center of worship and a symbol of the power and wealth of the pharaohs.The KarnAK temple complex is a must see for any traveler to Egypt. It is one of the most visited site in Egypt with millions of tourist visiting it every year. The temple is open to visitors year-round, and guided tours are available to help visitors navigate the complex and learn about its history and significance."
                "",
                style: TextStyle(
                    fontSize: 18, wordSpacing: 1, fontFamily: 'oxygen'),
              ),
              LocationPage(),
              LocationPage(),
            ],
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;

  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.white,
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
