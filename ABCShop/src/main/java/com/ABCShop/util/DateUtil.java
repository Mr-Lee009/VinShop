package com.ABCShop.util;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
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
    *
    * @param value Date
    * @return Timestamp
    */
   public static Timestamp date2Timestamp(Date value) {
       if (value != null) {
           return new Timestamp(value.getTime());
       }
       return null;
   }
}
