
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


import '../widgets/social_media_button.dart';
import 'calendar_screen.dart';

class ProfileScreen extends StatefulWidget{
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => ProfileScreenState();
}

class ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        color: const Color(0xffffffff), // Background color
        padding: const EdgeInsets.only(top: 50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const CircleAvatar(
                      backgroundColor: Color(0xffb095d5),
                      radius: 50.0,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage('http://i.imgur.com/QSev0hg.jpg'),
                        radius: 40.0,
                      ),
                    ),
                    const SizedBox(width: 60),

                    Padding(
                      padding: const EdgeInsets.only (right: 20),
                      child: Container(

                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffb095d5),
                        ),
                        child: const Icon(Icons.edit, color: Color(0xff8065c5)),
                      ),
                    ),
                  ],
                ),
                const Text(
                  'Jane Kolinz',
                  style: TextStyle(fontSize: 35.0, fontFamily: 'Lato', color: Colors.black87, ),
                  maxLines: 2,
                ),


              ],
            ),
            const SizedBox(height: 50),

            Padding(
              padding: const EdgeInsets.symmetric (horizontal: 40),
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color:  const Color(0xffffffff),
                    borderRadius: BorderRadius.circular (25),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: Offset(0, 2),
                      )
                    ]), // BoxDecoration
                child: InkWell(
                  onTap: () { Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CalendarScreen()),
                  );
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Calendar",
                          style: TextStyle(fontSize: 18, color: Colors.black54),
                        ), // Text
                        Icon(
                          Icons.arrow_forward,
                          color: Color(0xffb095d5),
                        ),
                      ],
                    ),
                  ),
                ), // TextButton
              ), // Container
            ), // Padding
            const SizedBox (
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric (horizontal: 40),
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color:  const Color(0xffffffff),
                    borderRadius: BorderRadius.circular (25),
                    boxShadow:  [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: Offset(0, 2),
                      )
                    ]), // BoxDecoration
                child: InkWell(
                  onTap: () {Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ProfileScreen()),
                  );},
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Reminder",
                          style: TextStyle(fontSize: 18, color: Colors.black54),
                        ), // Text
                        Icon(
                          Icons.arrow_forward,
                          color: Color(0xffb095d5),
                        ),
                      ],
                    ),
                  ),
                ), // TextButton
              ), // Container
            ), // Padding

            const SizedBox (
              height: 20,
            ),

            Padding(
              padding: const EdgeInsets.symmetric (horizontal: 40),
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color:  const Color(0xffffffff),
                    borderRadius: BorderRadius.circular (25),
                    boxShadow:  [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: Offset(0, 2),
                      )
                    ]), // BoxDecoration
                child: InkWell(
                  onTap: () {Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ProfileScreen()),
                  );},
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Rate us on App Store",
                          style: TextStyle(fontSize: 18, color: Colors.black54),
                        ), // Text

                      ],
                    ),
                  ),
                ), // TextButton
              ), // Container
            ), // Padding

            const SizedBox (
              height: 20,
            ),

            Padding(
              padding: const EdgeInsets.symmetric (horizontal: 40),
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color:  const Color(0xffffffff),
                    borderRadius: BorderRadius.circular (25),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: Offset(0, 2),
                      )
                    ]), // BoxDecoration
                child: InkWell(
                  onTap: () {Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ProfileScreen()),
                  );},
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Terms & Conditions",
                          style: TextStyle(fontSize: 18, color: Colors.black54),
                        ), // Text

                      ],
                    ),
                  ),
                ), // TextButton
              ), // Container
            ), // Padding

            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric (horizontal: 40),
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color:  const Color(0xffffffff),
                    borderRadius: BorderRadius.circular (25),
                    boxShadow:  [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: Offset(0, 2),
                      )
                    ]), // BoxDecoration
                child: InkWell(
                  onTap: () {Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ProfileScreen()),
                  );},
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Sign out",
                          style: TextStyle(fontSize: 18, color: Colors.black54),
                        ), // Text

                      ],
                    ),
                  ),
                ), // TextButton
              ), // Container
            ), // Padding
            const SizedBox(height: 20),

            const Column(

              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Text(
                  'Join us in Social Media',
                  style: TextStyle(fontSize: 20.0, fontFamily: 'Lato', color: Colors.black87, ),
                  maxLines: 2,
                ),
                Row(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    SocialMediaButton(icon: FontAwesomeIcons.facebook),
                    SocialMediaButton(icon: FontAwesomeIcons.twitter),
                    SocialMediaButton(icon: FontAwesomeIcons.instagram),


                  ],
                ),
              ],
            ),



          ],
        ),
      ),
    );

  }
}