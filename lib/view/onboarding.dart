import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_fitness/view/homescreen.dart';

class onboarding extends StatefulWidget {
  const onboarding({super.key});

  @override
  State<onboarding> createState() => _onboardingState();
}

class _onboardingState extends State<onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffA6A7EC),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 50, ),
              Text("It’s Ok Not To Be \n        OKAY !!", style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
                color: Color(0xffFAFAFA)
              ),),
              SizedBox(height: 30, ),
              Stack(
                children: [
                  SizedBox(height: 5, ),
                  Center(
                    child: Transform.translate(
                      offset: Offset(-100, 37), //
                      child: Container(
                        height: 400,
                        width: 400,
                        decoration: BoxDecoration(
                          color: Color(0xffCCC0F2),
                          borderRadius: BorderRadius.circular(250),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Center(
                        child: Container(
                          height: 640,
                          width: 360,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("asset/image/Illustartion.png"),
                                fit: BoxFit.fill)
                          ),
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(0, -150),
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>homescreen()));
                          },
                          child: Container(
                            height: 70,
                            width: 290,
                            decoration: BoxDecoration(
                                color: Color(0xff371B34),
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: Center(
                              child: (
                                  Text("Let Us Help You", style: TextStyle(
                                    color: Color(0xffFAFAFA),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                  ),)),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      )
    );
  }
}
