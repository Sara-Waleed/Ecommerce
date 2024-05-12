import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/colors.dart';
import 'CustomText.dart';
import 'Custom_TextFormField.dart';
import 'CutomButton.dart';
import 'Sign_With_App.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,

      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50,right: 20,left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(fontSize: 30,color: Colors.black,text: "Welcome"),
                CustomText(text: "Sign Up", color: PrimColor, fontSize: 18)
              ],
            ),
            CustomText(text: "Sign in to continue", color: Colors.grey, fontSize: 15),
            SizedBox(height: 30,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Custom_TextFormField( text: "Email",hint: "Email",onSaved:(p0) {},Validation: (p0) {},),
                SizedBox(height: 20,),
                Custom_TextFormField( text: "Password", hint: "******",onSaved:(p0) {},Validation: (p0) {},),

                SizedBox(height: 15,),
                Align(
                    alignment: Alignment.topRight,
                    child: CustomText(text: "Forget Password", color: Colors.grey, fontSize: 14,)),
                SizedBox(height: 20,),
                Center(child: CutomButton( color: PrimColor,text: "Sign Up",)),
                SizedBox(height: 40,),
                Center(child: CustomText(text: "-OR-", color: Colors.black, fontSize: 18)),
                SizedBox(height: 40,),

                Sign_With_App(text: "Sign in with FaceBook",image: "assets/images/facebook.png"),

                SizedBox(height: 40,),
                Sign_With_App(text: "Sign in with Google", image: "assets/images/google.png")

              ],
            ),
          ],
        ),
      ),
    );
  }
}