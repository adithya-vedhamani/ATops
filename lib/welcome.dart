import 'package:atops/common/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: size.height * 0.4,
              width: size.width * 0.8,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/welcome.png"),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(height: 13),
            Text(
              "Aap Bhi Kisaan",
              style: GoogleFonts.sora(
                fontSize: 34,
                fontWeight: FontWeight.w600,
                color: Colors.black, // Adjust text color as needed
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 13),
            SizedBox(
              height: 64,
              width: size.width * 0.8,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all(Colors.green), // Set button color to green
                ),
                onPressed: () => Navigator.pushNamed(
                  context,
                  Routes.home,
                ),
                child: Text(
                  'Start your tour today!',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
