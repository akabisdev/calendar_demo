import 'package:cell_calendar_update/cell_calendar_page.dart';
import 'package:cell_calendar_update/my_cell_calendar/src/utils/enums.dart';
import 'package:cell_calendar_update/week_view_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> list = ['Month view', 'Weekview', 'Day view'];
  CalendarView view = CalendarView.month;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calendar Demo'),
        actions: [
          PopupMenuButton(
            child: Center(child: Icon(Icons.more_vert)),
            itemBuilder: (context) {
              return List.generate(3, (index) {
                return PopupMenuItem(
                    child: InkWell(
                  onTap: () {
                    print(index);
                    _itemClicked(index);
                    Navigator.pop(context);
                  },
                  child: Text(list[index]),
                ));
              });
            },
          ),
        ],
      ),
      body: view == CalendarView.month
          ? CellCalendarPage()
          : (view == CalendarView.week ? WeekViewPage() : Container()),
    );
  }

  _itemClicked(int index) {
    switch (index) {
      case 0:
        {
          if (view != CalendarView.month) {
            view = CalendarView.month;
            setState(() {});
          }
          break;
        }

      case 1:
        {
          if (view != CalendarView.week) {
            view = CalendarView.week;
            setState(() {});
          }
          break;
        }

      case 2:
        {
          if (view != CalendarView.day) {
            view = CalendarView.day;
            setState(() {});
          }
          break;
        }
    }
  }
}
