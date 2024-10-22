import 'package:flutter/material.dart';
import 'package:login_sign_prj4_dribble/components/customBtn.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void gotoSignInScreen() {}
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome !'),
            const SizedBox(
              height: 20,
            ),
            Text('Sign in or create a new account '),
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
              height: 40,
            ),
            ElevatedButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Text('No account yet'),
                    Text(
                      'Sign Up',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.deepOrange),
                    )
                  ],
                ))
          ],
        ),
      )),
    );
  }
}
