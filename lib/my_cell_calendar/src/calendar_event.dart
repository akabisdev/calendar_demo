import 'package:flutter/material.dart';
// import 'package:flutter_app/models/response/calendar_events_response.dart';

/// DataModel of event
///
/// [eventName] and [eventDate] is essential to show in [CellCalendar]
class CalendarEvent {
  CalendarEvent({
    required this.eventName,
    required this.eventDate,
    this.eventBackgroundColor = Colors.blue,
    this.eventTextColor = Colors.white,
    this.eventID,

    ///Extra parameters from Calendar events api response
    this.calendarId,
    this.endDate,
    this.finished,
    this.gastosPrevistos,
    this.tipoTarea,
    this.type,
    // this.userResponsable
  });

  final String? eventName;
  final DateTime? eventDate;
  final String? eventID;
  final Color eventBackgroundColor;
  final Color eventTextColor;

  ///Extra paramters
  final calendarId;
  final String? endDate;
  final bool? finished;
  final gastosPrevistos;
  final String? tipoTarea;
  final String? type;
  // final UserResponsable? userResponsable;
}
