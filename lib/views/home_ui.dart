import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iot_mukrata_project/views/about_iu.dart';
import 'package:iot_mukrata_project/views/cal_bill_ui.dart';
import 'package:iot_mukrata_project/views/menu_ui.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({super.key});

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  final itemCtrl = NotchBottomBarController(index: 1);

  List<Widget> itemUIshow = [
    CalBillUI(),
    MenuUI(),
    AboutIu(),
  ];

  int selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text('Tceh SAU Buffet',
            style: TextStyle(
              color: Colors.white,
            )),
        centerTitle: true,
      ),
      bottomNavigationBar: AnimatedNotchBottomBar(
        onTap: (valueParam) {
          setState(() {
            selectedIndex = valueParam;
          });
        },
        notchBottomBarController: itemCtrl,
        color: Colors.deepOrange,
        notchColor: Colors.deepOrange,
        kIconSize: 24.0,
        kBottomRadius: 28.0,
        bottomBarItems: [
          BottomBarItem(
            itemLabel: 'คิดเงิน',
            activeItem: Icon(
              FontAwesomeIcons.moneyBillWave,
              color: Colors.white,
            ),
            inActiveItem: Icon(
              FontAwesomeIcons.moneyBillWave,
              color: Colors.grey,
            ),
          ),
          BottomBarItem(
            itemLabel: 'หน้าหลัก',
            activeItem: Icon(
              Icons.home,
              color: Colors.white,
            ),
            inActiveItem: Icon(
              Icons.home,
              color: Colors.grey,
            ),
          ),
          BottomBarItem(
            itemLabel: 'เกี่ยวกับ',
            activeItem: Icon(
              FontAwesomeIcons.star,
              color: Colors.white,
            ),
            inActiveItem: Icon(
              FontAwesomeIcons.star,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      body: itemUIshow[selectedIndex],
    );
  }
}
