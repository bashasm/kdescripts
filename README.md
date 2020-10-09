# kdescripts
kde scripts


For battery, install the below packages

- acpi
- libnotify-bin


kde set monday as first day of week
https://madhead.me/posts/kde-calendar-monday/

find /usr -name MonthView.qml 2> /dev/null
Replace firstDayOfWeek: Qt.locale().firstDayOfWeek with firstDayOfWeek: 1.
