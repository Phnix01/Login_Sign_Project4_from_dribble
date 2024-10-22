import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_sign_prj4_dribble/components/customBtn.dart';
import 'package:login_sign_prj4_dribble/screens/SignInScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void gotoSignInScreen() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => SignInScreen()));
    }

    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome !',
                style: GoogleFonts.openSans(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                )),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Sign in or create a new account ',
              style: GoogleFonts.openSans(
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Image.asset('assets/Air-Balloon-PNG-Image.png'),
            CustomBtn(
              onPressed: gotoSignInScreen,
              couleur: Colors.deepOrange,
              textData: 'Go to Sign In',
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(15.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'No account yet?',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Sign Up',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.deepOrange,
                      ),
                    )
                  ],
                ))
          ],
        ),
      )),
    );
  }
}
