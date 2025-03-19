import 'package:flutter/material.dart';
import 'package:iot_mukrata_project/views/home_ui.dart';

class SplashScreenUI extends StatefulWidget {
  const SplashScreenUI({super.key});

  @override
  State<SplashScreenUI> createState() => _SplashScreenUIState();
}

class _SplashScreenUIState extends State<SplashScreenUI> {
  @override
  void initState() {
    //โค้ด Splash Screen
    Future.delayed(
      //ระยะเวลาที่หน่วง
      Duration(seconds: 3),
      //พอครบเวลาหน่วงแล้วจะให้ทำอะไร
      () => Navigator.pushReplacement(
        // ignore: use_build_context_synchronously
        context,
        MaterialPageRoute(
          builder: (context) => HomeUI(),
        ),
      ),
    );

    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/images/logo.png',
                width: MediaQuery.of(context).size.width * 0.7,
              ),
            ),
            SizedBox(height: 50),
            CircularProgressIndicator(
              color: Colors.white,
            ),
            SizedBox(height: 50),
            Text(
              'Tech SAU BUFFET',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              'Copyright © 2025 by BarameeEiEi',
              style: TextStyle(
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
