import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
      Container(
        height: 110,
        width: 250,
        decoration: BoxDecoration(
          color: Colors.transparent
        ),
        child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xff371B34),
          unselectedItemColor: Color(0xffCDD0E3),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled, size: 40,),
              label: ""
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.circle_notifications_outlined, size: 40,),
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
      backgroundColor: Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: SafeArea(
          child: (
          Column(children: [
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("asset/image/Hamburger.png"),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("asset/image/Ellipse 2.png"),
                    fit: BoxFit.fill)
                  ),
                )

              ],),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(children: [
                Text("Welcome back,", style: TextStyle(
                  fontSize: 40,
                  color: Color(0xff371B34),
                ),),
                Text(" Sarina!", style: TextStyle(
                    fontSize: 40,
                  color: Color(0xff371B34),
                  fontWeight: FontWeight.bold,
                ),),

              ],),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(children: [
                Text("How are you feeling today ?", style: TextStyle(
                    fontSize: 26,
                  color: Color(0xff371B34),
                ),),
              ],),
            ),
            SizedBox(height: 10,),
            Container(
              height: 110,
              width: 350,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Feeling(image: "asset/image/Happy.png", color: 0xffEF5DA8,
                    text: "Happy", styletext: TextStyle(
                      fontSize: 15,
                    ),),
                  Feeling(image: "asset/image/Calm - Icon.png", color: 0xffAEAFF7,
                    text: "Calm", styletext: TextStyle(
                      fontSize: 15,
                    ),),
                  Feeling(image: "asset/image/Relax.png", color: 0xffF09E54,
                    text: "Relax", styletext: TextStyle(
                      fontSize: 15,
                    ),),
                  Feeling(image: "asset/image/Focus.png", color: 0xffA0E3E2,
                    text: "Focus", styletext: TextStyle(
                      fontSize: 15,
                    ),),
              ],),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(children: [
                Text("Today’s Task", style: TextStyle(
                  fontSize: 26,
                  color: Color(0xff371B34),
                ),),
              ],),
            ),
            SizedBox(height: 10,),
            Container(
              height: 170,
              width: 350,
              decoration: BoxDecoration(
                color: Color(0xffFCDDEC),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 17),
                child: Row(
                  children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text("Peer Group Meetup", style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),),
                          SizedBox(height: 10,),
                          Text("Let’s open up to the  thing that \nmatters amoung the people ", style: TextStyle(
                            fontSize: 16
                          ),),
                          SizedBox(height: 20,),
                          Row(children: [
                            Text("Join Now", style: TextStyle(
                              color: Color(0xffEF5DA8),
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),),
                            SizedBox(width: 10,),
                            Icon(Icons.play_circle, color: Color(0xffEF5DA8),size: 17,)
                          ],)
                      ],),
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("asset/image/Layer 2.png"),
                          fit: BoxFit.fill)
                        ),
                      )
                  ],
                ),
              ),
            ),
            SizedBox(height: 50,),
            Container(
              height: 170,
              width: 350,
              decoration: BoxDecoration(
                color: Color(0xffFBE2CC),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 17),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Meditation", style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),),
                        SizedBox(height: 10,),
                        Text("Aura is the most important thing \nthat matters to you.join us on ", style: TextStyle(
                            fontSize: 16
                        ),),
                        SizedBox(height: 20,),
                        Row(children: [
                          Text("06:00 PM", style: TextStyle(
                            color: Color(0xffF09A59),
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),),
                          SizedBox(width: 12,),
                          Icon(Icons.timelapse, color: Color(0xffF09A59),size: 17,)
                        ],)
                      ],),
                    SizedBox(width: 10,),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("asset/image/Meditation Icon.png"),
                              fit: BoxFit.fill)
                      ),
                    )
                  ],
                ),
              ),
            ),

          ],)
          ),
        ),
      ),
    );
  }

}

class Feeling extends StatelessWidget {
  final String image;
  final String text;
  final TextStyle styletext;
  final int color;

  const Feeling({
    required this.image,
    required this.text,
    required this.styletext,
    required this.color
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(color),
            ),
            child: Center(
              child: SizedBox(
                height: 40,
                  width: 60,
                  child: Image(image: AssetImage(image),
                  fit: BoxFit.contain,)
              )
            ),
          ),
          Text(this.text, style: this.styletext)
        ],
      ),
    );
  }
}
