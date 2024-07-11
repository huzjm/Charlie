class Date {
  final String [] days ={"Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"};
  int today;
  int hour;
  int minute;
  boolean before_noon;
  Date(int d, int h, int m, boolean beforeNoon)
  {
    today=d%7;
    if (h>=12&&beforeNoon)
    {
      hour=h%12;
    } 
    else if (h>=12&&beforeNoon==false)
    {
      hour=h%13;
    } else
    {
      hour=h;
    }
    minute=m;
    before_noon=beforeNoon;
  }



  Date(Date d)
  {
    today=d.today;
    hour = d.hour;
    minute=d.minute;
    before_noon=d.before_noon;
  }
  void addHour()
  {
    hour++;
    if (hour>=12&&before_noon)
    {
      hour=hour%12;
      today++;
    } else if (hour>12&&before_noon==false)
    {
      hour=hour%12;
    }
  }
  void addMinute()
  {
    minute++;
    if (minute>=60)
    {
      minute=minute%60;
      addHour();
    }
  }
  boolean equal (Date date)
  {
    if (date.today==today && date.hour==hour)
    {
      return true;
    } else
    {
      return false;
    }
  }
  String toString()
  {
    String date = days[today];
    if (hour<10)
      date+= " 0"+ hour;
    else
      date+=" "+ hour;
    if (minute<10)
      date+= ":0"+ minute;
    else
      date+= ":" +minute;
    if (before_noon)
      date+="AM";
    else
      date+="PM";
    return date;
  }
}