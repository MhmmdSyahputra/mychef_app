import 'package:flutter/material.dart';
import 'package:p01/utils/global.colors.dart';
import 'package:p01/view/widgets/button.global.dart';
import 'package:p01/view/widgets/social.login.dart';
import 'package:p01/view/widgets/text.form.global.dart';

class RegisterView extends StatelessWidget {
  RegisterView({ Key? key }) : super(key: key);
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Container(
                  alignment: Alignment.center,
                  child: Center(
                  child: Image.asset('assets/images/logo.png'), 
                ),
                ),
                const SizedBox(height: 50),
                Text(
                  'Register account',
                  style: TextStyle(
                    color: GlobalColors.textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500
                  ),
                ),
                const SizedBox(height: 15),

                //email input
                TextFormGlobal1(
                  controller: emailController, 
                  text: 'Email', 
                  obscure: false, 
                  textInputType: TextInputType.emailAddress,
                ),

                const SizedBox(height: 10),

                //password input
                TextFormGlobal2(
                  controller: passwordController, 
                  text: 'Password', 
                  textInputType: TextInputType.text, 
                  obscure: true,
                ),

                const SizedBox(height: 10),

                const SizedBox(height: 10),
                const ButtonGlobal2(),
                const SizedBox(height: 25),
                const SocialLogin2(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}