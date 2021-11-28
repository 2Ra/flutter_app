import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        leading: Icon(
          Icons.menu,
        ),
        // ignore: prefer_const_constructors
        title: Text(
          'My App',
        ),
        actions: [
          IconButton(
            onPressed: () {},
            // ignore: prefer_const_constructors
            icon: Icon(
              Icons.notification_important,
            ),
          )
        ],
      ),
      body: Container(
        // ignore: prefer_const_constructors
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  const Image(
                      image: NetworkImage(
                          'https://indiater.com/wp-content/uploads/2019/03/online-education-courses-sale-infographics-banner-design.jpg')),
                  // ignore: prefer_const_constructors
                  Container(
                    color: Colors.black.withOpacity(0.5),
                    width: double.infinity,
                    // ignore: prefer_const_constructors
                    padding: EdgeInsets.all(10),
                    // ignore: prefer_const_constructors
                    child: Text(
                      'Ramy',
                      textAlign: TextAlign.center,
                      // ignore: prefer_const_constructors
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
