import 'package:flutter/material.dart';
import 'package:voice_assistance/utils/colors.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      leading: IconButton(onPressed: () {
        
      }, icon: Icon(Icons.menu),
      ),
      title: Text("Voice Assistance"),
     ), 
     body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 10,),
        //circular avatar
       CircleAvatar(
        radius: 60,
        backgroundImage: AssetImage("assets/images/as.png"),
       ), 
       SizedBox(height: 20,),

       //the text container
       Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        margin: EdgeInsets.symmetric(horizontal: 40).copyWith(
          top: 30,
        ),
        decoration: BoxDecoration(
          color: Pallete.borderColor,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(15),
            topLeft: Radius.circular(1),
            bottomRight: Radius.circular(10)
          )

        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text("Good Morning, what task can I do for you ?", 
          style: TextStyle(
            color: Pallete.mainFontColor,
            fontWeight: FontWeight.bold, 
            fontSize: 25
            ),
            ),
        ),
       ),
       SizedBox(height: 10,),
       Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(
          top: 10,
          left: 22,
        ),
        alignment: Alignment.centerLeft,
         child: Text("Here are few Commands", 
         //textAlign: TextAlign.center,
            style: TextStyle(
              color: Pallete.mainFontColor,
              fontWeight: FontWeight.bold, 
              fontSize: 25
              ),
              ),
       ),
      ],
     ),
    );
  }
}