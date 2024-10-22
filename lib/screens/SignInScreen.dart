import 'package:flutter/material.dart';
import 'package:login_sign_prj4_dribble/components/customBtn.dart';
import 'package:login_sign_prj4_dribble/components/customInput.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome \n back!',
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.bold,
                  fontSize: 34,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Custominput(
                placeholderText: 'fomar9235@gmail.com',
                labelText: 'Email:',
                obscurText: false,
              ),
              const SizedBox(
                height: 20,
              ),
              Custominput(
                placeholderText: 'Enter your password',
                labelText: 'Password',
                obscurText: true,
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [],
              ),
              const SizedBox(
                height: 30,
              ),
              CustomBtn(
                textData: 'Sign in',
                couleur: Colors.deepOrange,
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
