import 'package:flutter/material.dart';
import 'package:login_sign_prj4_dribble/components/customBtn.dart';
import 'package:login_sign_prj4_dribble/components/customInput.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                'Create new \n account',
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.bold,
                  fontSize: 34,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Custominput(
                placeholderText: 'Enter your name',
                labelText: 'Full name',
                obscurText: false,
              ),
              const SizedBox(
                height: 20,
              ),
              Custominput(
                placeholderText: 'Enter your email',
                labelText: 'Email address',
                obscurText: false,
              ),
              const SizedBox(
                height: 30,
              ),
              Custominput(
                placeholderText: 'Create password',
                labelText: 'Enter your password',
                obscurText: false,
              ),
              const SizedBox(
                height: 60,
              ),
              CustomBtn(
                textData: 'Sign Up!',
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
