import 'package:carousel_slider/carousel_slider.dart';
import 'package:cht_tour_guide/tabbar_screen/bandarban_screen.dart';
import 'package:cht_tour_guide/tabbar_screen/khagrachari_screen.dart';
import 'package:cht_tour_guide/tabbar_screen/rangamati_screen.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:cht_tour_guide/models/banner model and list.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  int activeIndex = 0;
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      // appBar: AppBar(),
      body: Column(
        children: [
          Container(
            // shoud no use container height it not working based in height
            height: MediaQuery.of(context).size.height * 0.30,
            decoration: BoxDecoration(
              color: Colors.grey,
            ),
            child: Stack(
              children: [
                CarouselSlider.builder(
                  itemCount: imageList.length,
                  itemBuilder: (context, index, index2) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.green,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            imageList[index].imageUrl.toString(),
                          ),
                        ),
                      ),
                      // decoration image and child image effect is same
                      // child: Image(
                      //   height: double.infinity,
                      //   width: double.infinity,
                      //   fit: BoxFit.cover,
                      //   image: AssetImage(
                      //     imageList[index],
                      //   ),
                      // ),
                    );
                  },
                  options: CarouselOptions(
                    // total height
                    height: double.infinity,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 5),
                    viewportFraction: 1,
                    enlargeCenterPage: true,
                    enlargeStrategy: CenterPageEnlargeStrategy.height,
                    enableInfiniteScroll: false,
                    onPageChanged: (index, reason) {
                      setState(() => activeIndex = index);
                    },
                  ),
                ),
                Positioned(
                  left: 0.0,
                  right: 0.0,
                  bottom: 0.0,
                  child: Container(
                    height: 50.0,
                    padding: EdgeInsets.only(left: 10.0),
                    decoration: BoxDecoration(
                      // color: Colors.grey[700],
                      color: Colors.blueGrey.shade500.withOpacity(0.5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              imageList[activeIndex].imageTitle,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22.0,
                              ),
                            ),
                            Text(
                              imageList[activeIndex].imageSubTitle,
                              style: TextStyle(
                                color: Colors.grey[400],
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              AnimatedSmoothIndicator(
                                activeIndex: activeIndex,
                                count: imageList.length,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // child: Padding(
                  //   padding: EdgeInsets.all(10.0),
                  //   child: Row(
                  //     children: [
                  //       AnimatedSmoothIndicator(
                  //         activeIndex: activeindex,
                  //         count: imageList.length,
                  //       )
                  //     ],
                  //   ),
                  // ),
                )
              ],
            ),
          ),
          //wornong
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            elevation: 5.0,
            child: Container(
              decoration: BoxDecoration(
                // color: Colors.black.withOpacity(0.2),
                color: Colors.white38,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: TabBar(
                controller: tabController,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  color: Colors.orange,
                ),
                isScrollable: true,
                unselectedLabelColor: Colors.grey[600],
                labelColor: Colors.white,
                labelStyle: TextStyle(fontSize: 18.0),
                labelPadding:
                    EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
                tabs: [
                  Text(
                    "Bandarban",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Rangamati",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Khagrachari",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 6.0,
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: [
                Bandarban(),
                Rangamati(),
                Khagrachari(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
