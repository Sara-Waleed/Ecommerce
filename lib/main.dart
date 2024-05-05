import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'constants/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LogIn(),

    );
  }
}

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LogInScreen(),
    );
  }
}
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

class Sign_With_App extends StatelessWidget {
  final String image;
  final String text;
  const Sign_With_App({
    super.key,
    required this.text,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        height: 45,
        decoration: BoxDecoration(
          border:Border.all(color: Colors.grey,),
        ),
        child:Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(image),
            ),
            SizedBox(width: 80,),
            Text(text),
          ],
        ),
      ),
    );
  }
}

class CutomButton extends StatelessWidget {
  final String text;
  final Color color;
  const CutomButton({
    super.key,
    required this.text,
    required this.color
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style:  ElevatedButton.styleFrom(

        backgroundColor: color,
      ),
        onPressed: (){},
        child: Container(
            width:250,
            height: 50,
            child: Center(child: Text(text))));
  }
}

class Custom_TextFormField extends StatelessWidget {
  final String text;
  final String hint;
  final void Function(String?)? onSaved;
  final String? Function(String?)? Validation;
  const Custom_TextFormField({
    super.key,
    required this.text,
    required this.hint,
    required this.onSaved,
    required this.Validation
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(text: text, color:Colors.grey.shade900, fontSize: 14),
        TextFormField(
          onSaved: onSaved,
          validator: Validation,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(
              color: Colors.grey,

            ),
            fillColor: Colors.white,

          ),
        ),
      ],
    );
  }
}

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  const CustomText({
    super.key,
    required this.text,
    required this.color,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(
      color: color,
      //fontWeight: FontWeight.bold,
      fontSize: fontSize,

    ),);
  }
}
