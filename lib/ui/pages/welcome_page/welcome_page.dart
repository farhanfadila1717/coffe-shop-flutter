import 'package:coffeshop/ui/themes/color_palatte.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    return AnnotatedRegion(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SizedBox.expand(
          child: Stack(
            children: [
              SizedBox(
                height: screenSize.height * .7,
                width: screenSize.width,
                child: Image.asset(
                  'assets/images/img_onboarding.png',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  height: screenSize.height * .6,
                  width: screenSize.width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.transparent, Colors.black],
                      stops: [0.0, 0.7],
                    ),
                  ),
                ),
              ),

              Positioned.fill(
                right: 20,
                left: 20,
                bottom: 20,
                child: SafeArea(
                  child: Column(
                    mainAxisAlignment: .end,
                    crossAxisAlignment: .center,
                    children: [
                      Text(
                        "Fall in Love with Coffee in Blissful Delight!",
                        style: TextStyle(
                          color: ColorPalatte.white,
                          fontWeight: .w600,
                          fontSize: 32,
                        ),
                        textAlign: .center,
                      ),
                      Text(
                        "Welcome to our cozy coffee corner, where every cup is a delightful for you.",
                        style: TextStyle(color: ColorPalatte.lighter),
                        textAlign: .center,
                      ),
                      SizedBox(height: 32),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: ColorPalatte.normal,
                          foregroundColor: ColorPalatte.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          minimumSize: Size(double.infinity, 56),
                        ),
                        child: Text(
                          "Get Started",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
