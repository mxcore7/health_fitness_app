import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:health_fitness/view/homescreen.dart';
import 'package:iconly/iconly.dart';

class soundscreen extends StatefulWidget {
  const soundscreen({super.key});

  @override
  State<soundscreen> createState() => _soundscreenState();
}

class _soundscreenState extends State<soundscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      bottomNavigationBar:
      Container(
        height: 110,
        width: 250,
        decoration: BoxDecoration(
            color: Colors.transparent,
          border: Border.all(color: Colors.transparent)
        ),
        child: BottomNavigationBar(
          backgroundColor: Color(0xffFFFFFF),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xff371B34),
          unselectedItemColor: Color(0xffCDD0E3),
          items: [

            BottomNavigationBarItem(
              icon: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => homescreen()), // Assurez-vous que SoundScreen est correctement défini ailleurs dans votre code
                  );
                },
                child: Icon(
                  Icons.home_filled, size: 40,color: Color(0xffCDD0E3),),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.circle_notifications_outlined, size: 40,color: Color(0xff371B34),),
                label: ""
            ),

            BottomNavigationBarItem(
                icon: Icon(IconlyBold.user_2,size: 40,),
                label: ""
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings, size: 40,),
                label: ""
            )
          ],
        ),
      ),
      body: SafeArea(
        child: (
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Icon(Icons.keyboard_arrow_down, size: 35,),
              Icon(Icons.playlist_add_check, size: 35,),
            ],),),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text("Calming  Playlist", style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Color(0xff371B34)
            ),),
          ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 350,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(image: AssetImage("asset/image/Illustration.png"))
                ),
              ),
            ),
            SizedBox(height: 2,),
            Center(
              child: Text("Rain On Glass", style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: Color(0xff371B34)
              ),),
            ),
            SizedBox(height: 10,),
            Center(
              child: Text("By: Painting with Passion", style: TextStyle(
                color: Color(0xff371B34),
                fontSize: 16
              ),),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Icon(Icons.shuffle_rounded, color: Color(0xffEF5DA8),size: 30,),
                Icon(Icons.skip_previous, color: Color(0xffEF5DA8),size: 30,),
                Stack(
                  alignment: Alignment.center,
                  children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Color(0xffFCDDEC),
                      borderRadius: BorderRadius.circular(40)
                    ),
                  ),
                  SizedBox(
                    height: 80,
                    width: 80,
                    child: Transform.rotate(
                      angle: 12 * 1.1615927,
                      child: CircularProgressIndicator(
                        strokeWidth: 4,
                        value: 0.8, // Value of the progress (0.0 to 1.0)
                        backgroundColor: Color(0xffEF5DA8).withOpacity(0.3), // Background color of the progress indicator
                        color: Color(0xffEF5DA8),
                      ),
                    ),
                  ),
                    Icon(Icons.pause, size: 50,
                        color: Color(0xffFFFFFF))
                ],),
                Icon(Icons.skip_next, color: Color(0xffEF5DA8),size: 30,),
                Icon(Icons.restart_alt, color: Color(0xffEF5DA8),size: 30,),
              ],),
            )

        ],)
        ),
      ),
    );
  }
}
