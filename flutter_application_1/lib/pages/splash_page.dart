import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.only(top: 80.0, bottom: 60.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/fotocomida4.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Text(
              'Good Food',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 40.0,
              ),
            ),
            Text(
              "Deliciusly Simple",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                print("debug: clik");
              },
              child: Container(
                width: 250.0,
                height: 45.0,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(211, 28, 108, 1.0),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                alignment: Alignment.center,
                child: Text(
                  "Start Cooking",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
