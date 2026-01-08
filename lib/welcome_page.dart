import 'package:dami_cha/log_in_page.dart';
import 'package:flutter/material.dart';
import 'sign_up_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              const Spacer(flex: 1),

              Image.asset(
                'assets/images/logo.png',
                width: 350,
                height: 350,

                fit: BoxFit.contain,
              ),

              const SizedBox(height: 40),

              Text.rich(
                TextSpan(
                  style: const TextStyle(
                    fontFamily: 'BerlinSansFB',
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                  children: const [
                    TextSpan(text: 'When time is short, '),
                    TextSpan(
                      text: 'dami ',
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 146, 69),
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    TextSpan(text: 'cha'),
                  ],
                ),
              ),

              const SizedBox(height: 8),

              const Text(
                'Log In or Sign Up',
                style: TextStyle(
                  fontFamily: 'BerlinSansFB',
                  fontSize: 16,
                  color: Color.fromARGB(255, 85, 84, 84),
                  fontWeight: FontWeight.w600,
                ),
              ),

              const Spacer(flex: 3),

              SizedBox(
                width: double.infinity,
                height: 56,

                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUpPage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    elevation: 0,
                  ),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              const SizedBox(height: 16),

              SizedBox(
                width: double.infinity,
                height: 56,

                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LogInPage(),
                        ),
                      );
                  },
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.black,
                    side: const BorderSide(color: Colors.black, width: 2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),

                  child: const Text(
                    'Log In',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
              ),

              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
