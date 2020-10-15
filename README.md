# kdescripts
kde scripts

Note: 
If for some reason title bar, icons are missng

Install kwin (along with `kwin-x11` will come) in package manager


For battery, install the below packages

- acpi
- libnotify-bin


kde set monday as first day of week
https://madhead.me/posts/kde-calendar-monday/

find /usr -name MonthView.qml 2> /dev/null

Replace firstDayOfWeek: Qt.locale().firstDayOfWeek with firstDayOfWeek: 1.


Hash sum mismatch

sudo rm -rf /var/lib/apt/lists/partial

sudo apt-get update -o Acquire::CompressionTypes::Order::=gz
