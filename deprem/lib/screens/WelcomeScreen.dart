import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 120,
            color: Color(0xFFC20A19),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/welcome1.png"),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/earthquake1.png"),
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, '/Home'),
                  style: ElevatedButton.styleFrom(
                  primary: Color(0xFFC20A19), // Background color
                  ),
                  child: Text(
                    "GO TO APP",
                    style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
