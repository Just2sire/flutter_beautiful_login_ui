import 'package:flutter/material.dart';
import 'package:login_ui/widgets/gradient_button.dart';
import 'package:login_ui/widgets/login_field.dart';
import 'package:login_ui/widgets/social_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/images/signin_balls.png"),
              const Text(
                "Sign in",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const SocialButton(
                iconPath: "assets/svgs/g_logo.svg",
                label: "Continue with Google",
              ),
              const SizedBox(
                height: 20,
              ),
              const SocialButton(
                iconPath: "assets/svgs/f_logo.svg",
                label: "Continue with Facebook",
                horizontalPadding: 90,
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'or',
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(
                  maxWidth: 400,
                ),
                child: const LoginField(
                  hintText: "Email",
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(
                  maxWidth: 400,
                ),
                child: const LoginField(
                  hintText: "Password",
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const GradientButton(),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
