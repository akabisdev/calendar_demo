import 'package:flutter/material.dart';

import 'my_week_view/flutter_week_view.dart';

class WeekViewPage extends StatefulWidget {
  WeekViewPage({
    Key? key,
  }) : super(key: key);

  @override
  _WeekViewPageState createState() => _WeekViewPageState();
}

class _WeekViewPageState extends State<WeekViewPage> {
  // CalendarView _view = CalendarView.month;
  // late CalendarController _controller;

  @override
  void initState() {
    super.initState();
    // _controller = CalendarController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: weekView());
  }

  Widget weekView() {
    // Let's get two dates :
    DateTime now = DateTime.now();
    DateTime date = DateTime(now.year, now.month, now.day);

// And here's our widget !
    return WeekView(
      dates: [
        date.subtract(Duration(days: 1)),
        date,
        date.add(Duration(days: 1))
      ],
      events: [
        FlutterWeekViewEvent(
          title: 'An event 1',
          description: 'A description 1',
          start: date.subtract(Duration(hours: 1)),
          end: date.add(Duration(hours: 18, minutes: 30)),
        ),
        FlutterWeekViewEvent(
          title: 'An event 2',
          description: 'A description 2',
          start: date.add(Duration(hours: 19)),
          end: date.add(Duration(hours: 22)),
        ),
        FlutterWeekViewEvent(
          title: 'An event 3',
          description: 'A description 3',
          start: date.add(Duration(hours: 23, minutes: 30)),
          end: date.add(Duration(hours: 25, minutes: 30)),
        ),
        FlutterWeekViewEvent(
          title: 'An event 4',
          description: 'A description 4',
          start: date.add(Duration(hours: 20)),
          end: date.add(Duration(hours: 21)),
        ),
        FlutterWeekViewEvent(
          title: 'An event 5',
          description: 'A description 5',
          start: date.add(Duration(hours: 20)),
          end: date.add(Duration(hours: 21)),
        ),
      ],
    );
  }

  _itemClicked(int index) {
    switch (index) {
      case 0:
        {
          // if (_view != CalendarView.month) {
          // _controller.view = CalendarView.month;
          // setState(() {
          //   });
          // }
          break;
        }

      case 1:
        {
          // if (_view != CalendarView.week) {
          // _controller.view = CalendarView.week;
          // setState(() {
          //   });
          // }
          break;
        }

      case 2:
        {
          // if (_view != CalendarView.day) {
          // _controller.view = CalendarView.day;
          // setState(() {
          //   });
          // }
          break;
        }
    }
  }
}
