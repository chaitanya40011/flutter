

import 'package:flutter/material.dart';

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
