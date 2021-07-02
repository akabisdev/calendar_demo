import 'package:flutter/material.dart';

import 'my_cell_calendar/src/cell_calendar.dart';
import 'my_cell_calendar/src/controllers/cell_calendar_page_controller.dart';

class CellCalendarPage extends StatefulWidget {
  CellCalendarPage({
    Key? key,
  }) : super(key: key);

  @override
  _CellCalendarPageState createState() => _CellCalendarPageState();
}

class _CellCalendarPageState extends State<CellCalendarPage> {
  // CalendarView _view = CalendarView.month;
  // late CalendarController _controller;
  final cellCalendarPageController = CellCalendarPageController();

  @override
  void initState() {
    super.initState();
    // _controller = CalendarController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CellCalendar(
      cellCalendarPageController: cellCalendarPageController,
      onPageChanged: (firstDate, lastDate) {
        print(firstDate);
        print(lastDate);
      },
    ));
  }
}
