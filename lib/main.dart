import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
      const Duration(seconds: 6),
          () =>
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const LoginScreen()),
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        color: Color(0xff1a1c2a),
        child: const Center(
          child:Text(
            "Splash Screen",
            style: TextStyle(fontSize: 35.0, fontFamily: 'Lato', color: Colors.white, ),
          ),
        ),
      ),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        color: const Color(0xff1a1c2a), // Background color
        padding: const EdgeInsets.only(top: 150.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
              padding: const EdgeInsets.only(left: 24.0),
              child: const Column(
                children: [

                  Text(
                    'Hey, Username',
                    style: TextStyle(fontSize: 35.0, fontFamily: 'Lato', color: Colors.white, ),
                    maxLines: 2,
                  ),


                ],
              ),
            ),
            const SizedBox(height: 150),

            Padding(
              padding: const EdgeInsets.symmetric (horizontal: 20),
              child: Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color:  const Color(0xfff57a7a),
                  borderRadius: BorderRadius.circular (20),
                ), // BoxDecoration
                child: TextButton(
                  onPressed: () {Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ProfileScreen()),
                  );},

                  child: const Text (
                    "Log in/Register",
                    style: TextStyle (fontSize: 18, color: Colors.white),
                  ), // Text
                ), // TextButton
              ), // Container
            ), // Padding
            const SizedBox (
              height: 20,
            ),

            Padding(
              padding: const EdgeInsets.symmetric (horizontal: 20),
              child: Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xffc29153),
                  borderRadius: BorderRadius.circular (20),
                ), // BoxDecoration
                child: TextButton(
                  onPressed: () {},
                  child: const Text (
                    "See Preview",
                    style: TextStyle (fontSize: 18, color: Colors.white),
                  ), // Text
                ), // TextButton
              ), // Container
            ), // Padding

          ],
        ),
      ),
    );
  }
}

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


class SocialMediaButton extends StatelessWidget {
  final IconData icon;

  const SocialMediaButton({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 3,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Icon(
          icon,
          color: Color(0xffb095d5),
          size: 24.0,
        ),
      ),
    );
  }
}
class CalendarScreen extends StatelessWidget {
  const CalendarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calendar'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: const CalendarWidget(),
    );
  }
}
class CalendarWidget extends StatefulWidget {
  const CalendarWidget({super.key});

  @override
  State<CalendarWidget> createState() => CalendarWidgetState();
}

class CalendarWidgetState extends State<CalendarWidget> {
  List<String> months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: months.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {

            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return DatesWidget(month: months[index], monthIndex: index + 1);
                },
              ),
            );
          },

            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
          child: Container(
          height: 60,
          width: double.infinity,
            decoration: BoxDecoration(
                color:  const Color(0xffffffff),
                borderRadius: BorderRadius.circular (5),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xffa8b0b0),
                    offset: Offset(1, 2),
                  )
                ]), // BoxDecoration
            child: Center(
              child: Text(
                months[index],
                style: const TextStyle(fontSize: 18, color: Colors.blueAccent),
              ),
            ),
          ),

        ),
        );
      },
    );
  }
}

class DatesWidget extends StatelessWidget {
  final String month;
  final int monthIndex;

  const DatesWidget({super.key, required this.month, required this.monthIndex});

  @override
  Widget build(BuildContext context) {
    int daysInMonth = getDaysInMonth(monthIndex);

    return Scaffold(
      appBar: AppBar(
        title: Text(month),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 8.0,
          crossAxisSpacing: 10.0,
        ),
        itemCount: daysInMonth,
        itemBuilder: (context, index) {
          int day = index + 1;
          return GestureDetector(
            onTap: () {

              handleDayTap(context, day);
            },
            child: Container(
              color: const Color(0xffb095d5),
              height: 30,
              child: Center(
                child: Text(day.toString()),
              ),
            ),
          );
        },
      ),
    );
  }

  int getDaysInMonth(int month) {

    if ([1, 3, 5, 7, 8, 10, 12].contains(month)) {
      return 31;
    } else if ([4, 6, 9, 11].contains(month)) {
      return 30;
    } else {

      bool isLeapYear = DateTime.now().year % 4 == 0;
      return isLeapYear ? 29 : 28;
    }
  }

  void handleDayTap(BuildContext context, int day) {

    print('Selected day: $day of month $month');

    Navigator.of(context).pop();
  }
}
