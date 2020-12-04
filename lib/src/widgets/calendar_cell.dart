part of table_calendar;

class CalendarCell extends StatelessWidget {
  const CalendarCell(
    this.date, {
    @required this.controller,
    @required this.calendarStyle,
  });

  final DateTime date;
  final CalendarController controller;
  final CalendarStyle calendarStyle;

  @override
  Widget build(BuildContext context) => _CellWidget(
      text: '${date.day}',
      calendarStyle: calendarStyle,
      isOutsideMonth: controller.isExtraDay(date),
      isSelected: controller.isSelected(date),
      isHoliday: false,
      isToday: controller.isToday(date),
      isWeekend:
          controller.isWeekend(date, [DateTime.friday, DateTime.saturday]),
      isEventDay:
          false //controller.visibleEvents.containsKey(controller._getEventKey(date)),

      );
}
