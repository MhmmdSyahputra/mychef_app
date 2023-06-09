import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:p01/utils/global.colors.dart';
import 'package:p01/view/widgets/button.global.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              const Text(
                'Edit Profile',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 15,
              ),
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage('https://i.pinimg.com/474x/db/bf/05/dbbf0537097fe6db32729f0ae16b7e1e.jpg')
                        )
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: GlobalColors.mainColor,
                        ),
                        child: const Icon(
                          FontAwesomeIcons.camera,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              buildTextField('Full Name', false),
              buildTextField('Email', false),
              buildTextField('Password', true),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 35
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  ButtonGlobal4(),
                  ButtonGlobal5()
                ],
              ),
            ],
          ),
        ),
      ),
    ); 
  }

  Widget buildTextField(String labelText, bool isPasswordTextField) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35.0),
      child: TextField(
        obscureText: isPasswordTextField,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(bottom: 3),
          labelText: labelText,
          hintStyle: TextStyle(
            fontSize: 16, 
            fontWeight: FontWeight.bold,
            color: GlobalColors.textColor,
          )
        ),
      ),
    );
  }
}