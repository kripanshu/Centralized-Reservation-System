package com.utdallas.classes;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;

import com.utdallas.models.ReservationList;
import com.utdallas.models.Reserve;

public class Test {

	public static void main(String[] args) {
		Reserve reserve = new Reserve();
		reserve.reserve("ECSS", "1", "2", "mxs123");
		System.out.println("Executed");
		}
	
}
