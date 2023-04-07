// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:p01/utils/global.colors.dart';
import 'package:p01/view/login.view.dart';
import '../main.menu.dart';

class ButtonGlobal extends StatelessWidget {
  const ButtonGlobal({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const MyHomePage();
            },
          ),
        );
      },
      child: Container(
        alignment: Alignment.center,
        height: 55,
        decoration: BoxDecoration(
          color: GlobalColors.mainColor,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
            )
          ]
        ),
        child: const Text(
          'Sign In',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

class ButtonGlobal2 extends StatelessWidget {
  const ButtonGlobal2({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context, 
          MaterialPageRoute(
            builder: (context){
            return LoginView();
            },
          ),
        );
      },
      child: Container(
        alignment: Alignment.center,
        height: 55,
        decoration: BoxDecoration(
          color: GlobalColors.mainColor,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
            )
          ]
        ),
        child: const Text(
          'Register',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

class ButtonGlobal3 extends StatelessWidget {
  const ButtonGlobal3({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context, 
          MaterialPageRoute(
            builder: (context){
            return LoginView();
            },
          ),
        );
      },
      child: Container(
        alignment: Alignment.center,
        height: 55,
        decoration: BoxDecoration(
          color: GlobalColors.mainColor,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
            )
          ]
        ),
        child: const Text(
          'Send Verification Link',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

class ButtonGlobal4 extends StatelessWidget {
  const ButtonGlobal4({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const MyHomePage();
            },
          ),
        );
      },
      child: Container(
        alignment: Alignment.center,
        height: 40,
        width: 70,
        padding: const EdgeInsets.symmetric(horizontal: 1),
        decoration: BoxDecoration(
          color: GlobalColors.buttColor,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
            )
          ]
        ),
        child: const Text(
          'Cancel',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

class ButtonGlobal5 extends StatelessWidget {
  const ButtonGlobal5({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const MyHomePage();
            },
          ),
        );
      },
      child: Container(
        alignment: Alignment.center,
        height: 40,
        width: 70,
        padding: const EdgeInsets.symmetric(horizontal: 1),
        decoration: BoxDecoration(
          color: GlobalColors.mainColor,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
            )
          ]
        ),
        child: const Text(
          'Save',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}