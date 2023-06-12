import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';


class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  CalendarState createState() => CalendarState();
}

class CalendarState extends State<Calendar> {
  late DateTime _selectedDate;

  @override
  void initState() {
    super.initState();
    _selectedDate = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return CalendarCarousel<Event>(
      onDayPressed: (DateTime date, List<Event> events) {
        setState(() {
          _selectedDate = date;
        });
      },
      weekendTextStyle: const TextStyle(color: Colors.red),
      thisMonthDayBorderColor: Colors.grey,
      customDayBuilder: (
        bool isSelectable,
        int index,
        bool isSelectedDay,
        bool isToday,
        bool isPrevMonthDay,
        TextStyle textStyle,
        bool isNextMonthDay,
        bool isThisMonthDay,
        DateTime day,
      ) {
        // Customize the day cell appearance
        // Here, we'll highlight the selected date with a red background
        if (isSelectable && isSelectedDay) {
          return Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                '${day.day}',
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          );
        }
        return null;
      },
      weekFormat: false,
      height: 350.0,
      selectedDateTime: _selectedDate,
    );
  }
}
