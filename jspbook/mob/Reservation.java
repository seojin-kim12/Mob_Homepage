package jspbook.mob;
import java.time.LocalDate;

public class Reservation {
	
	 LocalDate now = LocalDate.now();
	 int year = now.getYear();
	 int month = now.getMonthValue();
	 int day = now.getDayOfMonth(); 
	 private String u_month;
	 private String u_date;
	 private String u_name;
	 
	 int cnt=0;
	  
	 public int getYear() {
		 return year;
	 }
	 public int getMonth() {
		 return month;
	 }
	 public int getDate() {
		 return day;
	 }
	
	 public String getU_month() {
	 	return u_month;
	 } 
	
	 public void setU_month(String m) {
	 	u_month=m;
	 }
	
	 public String getU_date() {
	 	return u_date;
	 }
	
	 public void setU_date(String d) {
		u_date=d;
	 }
	 public String getU_name() {
		 return u_name;
	 }
		
	 public void setU_name(String n) {
		u_name=n;
	 }
	 
	 public int count() {
		 cnt++;
		 return cnt;
	 }
}
