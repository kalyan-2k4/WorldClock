package com.kalyan.worldtimezone;

import java.util.Calendar;
import java.util.TimeZone;
public class TimeZoneCalculator {
	
	public String[] callTimeZoneLocations()
	{
		 
		return TimeZone.getAvailableIDs();
	}
	public String callTime(String location)
	{
		 Calendar cal = Calendar.getInstance();
		 System.out.println(location);
	      cal.setTimeZone(TimeZone.getTimeZone(location));
	      String val = Integer.toString(cal.get(Calendar.HOUR_OF_DAY)) +":"+Integer.toString(cal.get(Calendar.MINUTE)) +":"+ Integer.toString(cal.get(Calendar.SECOND));
	      return val;
	}
   public static void main(String[] args) {
     
     
   }
}