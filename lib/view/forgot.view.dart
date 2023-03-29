import 'package:flutter/material.dart';
import 'package:p01/utils/global.colors.dart';
import 'package:p01/view/widgets/button.global.dart';
import 'package:p01/view/widgets/text.form.global.dart';

class ForgetView extends StatelessWidget {
  ForgetView({ Key? key }) : super(key: key);
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
                  child: Text(
                    'Logo',
                    style: TextStyle(
                      color: GlobalColors.textColor,
                      fontSize: 35,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                const SizedBox(height: 50),

                //email input
                TextFormGlobal1(
                  controller: emailController, 
                  text: 'Email', 
                  obscure: false, 
                  textInputType: TextInputType.emailAddress,
                ),

                const SizedBox(height: 10),

                const SizedBox(height: 10),
                const ButtonGlobal3(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}