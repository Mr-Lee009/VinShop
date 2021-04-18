package com.ABCShop.util;

import java.util.ResourceBundle;

public class MessageUtil {
	public static volatile ResourceBundle rb = ResourceBundle.getBundle("message");
	public static volatile ResourceBundle rbConfig = ResourceBundle.getBundle("message");
	
	public static String getMessage(String key) {
		String value = "";
		try {
			if (rb.containsKey(key)) {
                return rb.getString(key);
            } else {
                rb = ResourceBundle.getBundle("message");
            }
            if (rb.containsKey(key)) {
                return rb.getString(key);
            }
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}
	public static void main(String[] args) {
		System.out.println(getMessage("success.add.user"));
		System.out.println(getMessage("error.add.user"));
	}
}
