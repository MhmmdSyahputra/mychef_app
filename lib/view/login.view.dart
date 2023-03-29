import 'package:flutter/material.dart';
import 'package:p01/utils/global.colors.dart';
import 'package:p01/view/edit.profile.view.dart';
import 'package:p01/view/forgot.view.dart';
import 'package:p01/view/register.view.dart';
import 'package:p01/view/widgets/button.global.dart';
import 'package:p01/view/widgets/social.login.dart';
import 'package:p01/view/widgets/text.form.global.dart';

class LoginView extends StatelessWidget {
  LoginView({ Key? key }) : super(key: key);
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
                Center(
                  child: Image.asset('assets/images/logo.png'), 
                ),
                const SizedBox(height: 50),
                Text(
                  'Login to your account',
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

                Row(
                children: [
                Text(
                  'Forget your password? ',
                  style: TextStyle(
                    color: GlobalColors.textColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w500
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context){
                          return ForgetView();
                          },
                        ),
                      );
                    },
                    child: Text(
                      'click here',
                      style: TextStyle(
                      color: GlobalColors.mainColor
                    ),
                  ),
                ),
              ]
              ),
              Row(
                children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context){
                          return const EditProfile();
                          },
                        ),
                      );
                    },
                    child: Text(
                      'edit profile',
                      style: TextStyle(
                      color: GlobalColors.mainColor
                    ),
                  ),
                ),
              ]
              ),
                const SizedBox(height: 25),
                const ButtonGlobal(),
                const SizedBox(height: 25),
                const SocialLogin(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.white,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Don\'t have an account? ',
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context){
                      return RegisterView();
                    },
                  ),
                );
              },
              child: Text(
                'Register here',
                style: TextStyle(
                  color: GlobalColors.mainColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}