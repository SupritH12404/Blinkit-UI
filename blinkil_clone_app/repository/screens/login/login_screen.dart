import 'package:flutter/material.dart';
import 'package:untitled/blinkil_clone_app/repository/screens/bottomNav/bottomNavscreen.dart';
import 'package:untitled/blinkil_clone_app/repository/widgets/uihelper.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            UIHelper.customImage(img: 'blinkitonboardingscreen.png'),
            SizedBox(height: 30),
            UIHelper.customImage(img: 'blinkitlogo.png'),
            SizedBox(height: 10),
            UIHelper.customText(
              text: "India's last minute app",
              color: Color(0xFF000000),
              fontweight: FontWeight.bold,
              fontsize: 20,
            ),
            SizedBox(height: 20),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(10),
              ),
              child: Container(
                height: 240,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    UIHelper.customText(
                      text: 'Suprit Rana',
                      color: Color(0xFF000000),
                      fontweight: FontWeight.w500,
                      fontsize: 18,
                    ),
                    SizedBox(height: 8),
                    UIHelper.customText(
                      text: '817897XXXX',
                      color: Color(0xff9C9C9C),
                      fontweight: FontWeight.bold,
                      fontsize: 15,
                    ),
                    SizedBox(height: 22),
                    SizedBox(
                      height: 50,
                      width: 295,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (index) => Bottomnavscreen(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFE23744),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(10),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            UIHelper.customText(
                              text: "Login  with",
                              color: Colors.white,
                              fontweight: FontWeight.bold,
                              fontsize: 16,
                            ),
                            SizedBox(width: 5),
                            UIHelper.customImage(img: 'zomato.png'),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    UIHelper.customText(
                      text:
                          "Access your saved addresses from Zomato automatically!",
                      color: Color(0xFF9C9C9C),
                      fontweight: FontWeight.normal,
                      fontsize: 11,
                    ),
                    SizedBox(height: 20),
                    UIHelper.customText(
                      text: "or login with phone number",
                      color: Color(0xFF269237),
                      fontweight: FontWeight.normal,
                      fontsize: 15,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
