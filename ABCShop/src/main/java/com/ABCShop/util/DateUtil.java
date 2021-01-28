package com.ABCShop.util;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class DateUtil {

	/**
	 * 
	 * */
	public static String convertDateTimeToString(Date date, String pattern) throws Exception {
		SimpleDateFormat dateFormat = new SimpleDateFormat(pattern);
		try {
			return dateFormat.format(date);
		} catch (Exception e) {
			throw e;
		}
	}

	/**
	 * @param value Date
	 * @return String
	 */
	public static String date2String(Date value) {
		if (value != null) {
			SimpleDateFormat date = new SimpleDateFormat("yyyy/MM/dd");
			return date.format(value);
		}
		return "";
	}

	/**
	 * @param value Date
	 * @return Timestamp
	 */
	public static Timestamp date2Timestamp(Date value) {
		if (value != null) {
			return new Timestamp(value.getTime());
		}
		return null;
	}
	
	 /**
    *
    * @param date Date
    * @param day integer
    * @return Date
    */
   public static Date nextdate(Date date, int day) {
       Calendar calendar = Calendar.getInstance();
       calendar.setTime(date);
       calendar.set(calendar.get(Calendar.YEAR), calendar.get(Calendar.MONTH),
               calendar.get(Calendar.DATE) + day, 0, // hour
               0, // min
               0); // sec
       /**
        * clear millisecond field
        */
       calendar.clear(Calendar.MILLISECOND);
       return calendar.getTime();
   }
   public static void main(String[] args) {
	
	   Date date = nextdate(new Date(),7);
	   System.out.println(date);
   }
}
