import 'package:back/View/widgets/custom_text_from_fild.dart';
import 'package:flutter/material.dart';

import '../../constance.dart';
import '../widgets/custom_butten.dart';
import '../widgets/custom_text.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       elevation: 0,
     ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(text: "Welcome", color: Colors.black, size: 30),
                CustomText(text: "Sign In",  color: primaryColor, size: 18),

              ],
            ),
            CustomText(text: "Sign in to Continue", color: Colors.black, size: 20),
           SizedBox(height: 20,),

           CustomTextFromFild(text: "iamdavid@gmail.com"),
            SizedBox(height: 20,),
            CustomTextFromFild(text: ".............."),
            Padding(
              padding: const EdgeInsets.only(left: 290,top: 10,bottom: 10),
              child: CustomText(text: "forget password?", color: Colors.black, size: 10),
            ),
            CustomButton(
              color: primaryColor,
              text: "Login",
              onPressed: () {
                print("Clicked");
              },
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(child: CustomText(text: "-OR-", color: Colors.black, size: 20)),
            ),
            CustomButton(

              color: Colors.white,
              text: "sinIn with facebook",
              icon: Icons.facebook,
              onPressed: () {
                print("Clicked");
              },
            ),
            SizedBox(height: 10,),
            CustomButton(
              color: Colors.white,
              text: "sinIn with google",
              icon: Icons.g_mobiledata,
              onPressed: () {
                print("Clicked");
              },
            ),
          ],
        ),
      ),
    );
  }
}
