import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import '../constants.dart';
import '../data.dart';
import 'detail.dart';

class MyHomePage extends StatelessWidget {
  static const routeName = 'home-page';

  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: gradientEndColor,
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [gradientStartColor, gradientEndColor],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: const [0.3, 0.7],
              ),
            ),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(32),
                    child: Column(
                      children: [
                        const Text(
                          'Space App',
                          style: TextStyle(
                            fontSize: 34,
                            fontWeight: FontWeight.w700,
                            color: Color(0xffffffff),
                          ),
                          textAlign: TextAlign.left,
                        ),
                        DropdownButton(
                          items: const [
                            DropdownMenuItem(
                              child: Text(
                                'Solar System',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0x7cdbf1ff),
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                          onChanged: (value) {},
                          icon: Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child:
                                Image.asset('assets/images/drop_down_icon.png'),
                          ),
                          underline: const SizedBox(),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 460,
                    padding: const EdgeInsets.only(left: 32, bottom: 20),
                    child: Swiper(
                      itemCount: planets.length,
                      itemWidth: MediaQuery.of(context).size.width - 2 * 64,
                      layout: SwiperLayout.STACK,
                      // control: const SwiperControl(
                      //   size: 7,
                      //   color: Colors.pinkAccent,
                      // ),
                      pagination: SwiperPagination(
                        builder: DotSwiperPaginationBuilder(
                            activeSize: 10,
                            space: 4,
                            size: 6,
                            activeColor: Colors.orange[200]),
                      ),
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                pageBuilder: (context, a, b) => DetailPage(
                                  planetInfo: planets[index],
                                ),
                              ),
                            );
                          },
                          child: Stack(
                            children: [
                              Column(
                                children: [
                                  const SizedBox(height: 70),
                                  Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(32),
                                    ),
                                    elevation: 8,
                                    color: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.all(32.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const SizedBox(height: 100),
                                          Text(
                                            planets[index].name,
                                            style: const TextStyle(
                                              fontSize: 34,
                                              fontWeight: FontWeight.w900,
                                              color: Color(0xff47455f),
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          Text(
                                            'solar System',
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500,
                                              color: primaryTextColor,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          const SizedBox(
                                            height: 22,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'Know more',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500,
                                                  color: secondaryTextColor,
                                                ),
                                              ),
                                              Icon(
                                                Icons.arrow_forward,
                                                color: secondaryTextColor,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Hero(
                                tag: planets[index].position,
                                child: Image.asset(
                                  planets[index].iconImage,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
