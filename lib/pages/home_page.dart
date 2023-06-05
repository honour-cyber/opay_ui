// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import '../widgets/alert_info.dart';
import '../widgets/send_money.dart';
import '../widgets/wallet.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.grey[400],
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: GNav(
              padding: EdgeInsets.all(25),
              backgroundColor: Colors.grey.shade400,
              color: Color.fromARGB(255, 54, 200, 130),
              activeColor: Color.fromARGB(255, 54, 200, 130),
              tabBackgroundColor: Colors.white,
              iconSize: 30,
              gap: 8,
              tabs: [
                GButton(
                  icon: LineIcons.wallet,
                  text: 'Pay',
                  textSize: 30,
                ),
                GButton(
                  icon: Icons.person,
                  text: 'Profile',
                  textSize: 30,
                ),
                GButton(
                  icon: Icons.support_agent,
                  text: 'Help',
                  textSize: 30,
                ),
                GButton(
                  icon: Icons.settings,
                  text: 'Settings',
                  textSize: 30,
                ),
              ]),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Color.fromARGB(255, 54, 200, 130),
          size: 40,
        ),
        title: Row(children: [
          Padding(padding: EdgeInsets.all(40)),
          Text(
            'OPay',
            style: TextStyle(
              fontSize: 40,
              color: Colors.black,
            ),
          ),
          SizedBox(
            width: 90,
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Color.fromARGB(255, 54, 200, 130),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                'lib/img/img1.jpg',
                scale: 10,
              ),
            ),
          ),
        ]),
      ),
      backgroundColor: Colors.grey[350],
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Stack(alignment: Alignment(0, 1.3), children: [
              Wallet(),
              Container(
                height: 55,
                width: 55,
                decoration: BoxDecoration(
                    color: Colors.green[400],
                    borderRadius: BorderRadius.circular(50)),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 40,
                ),
              ),
            ]),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 100,
              child: PageView(
                controller: _controller,
                scrollDirection: Axis.horizontal,
                children: [
                  AlertInfo(
                    image: Image.asset('lib/icons/fund.png'),
                    info: 'Transfer money from any bank app to OPay balance!',
                  ),
                  AlertInfo(
                    image: Image.asset('lib/icons/icon2.png'),
                    info: 'Transfer money from any bank app to OPay balance!',
                  ),
                  AlertInfo(
                    image: Image.asset('lib/icons/icon3.png'),
                    info: 'Transfer money from any bank app to OPay balance!',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(
                activeDotColor: Color.fromARGB(255, 53, 119, 233),
                dotHeight: 10,
                dotWidth: 10,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SendMoney(),
          ],
        ),
      ),
    );
  }
}
