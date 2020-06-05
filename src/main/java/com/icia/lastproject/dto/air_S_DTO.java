package com.icia.lastproject.dto;

import java.util.Date;


public class air_S_DTO {

private String airportname;
private String airname;
private String time;
private String starttime;
private String endtime;
private String startarea;
private int startprice;
private int startnum;
public String getAirportname() {
	return airportname;
}
public void setAirportname(String airportname) {
	this.airportname = airportname;
}
public String getAirname() {
	return airname;
}
public void setAirname(String airname) {
	this.airname = airname;
}
public String getTime() {
	return time;
}
public void setTime(String time) {
	this.time = time;
}
public String getStarttime() {
	return starttime;
}
public void setStarttime(String starttime) {
	this.starttime = starttime;
}
public String getEndtime() {
	return endtime;
}
public void setEndtime(String endtime) {
	this.endtime = endtime;
}
public String getStartarea() {
	return startarea;
}
public void setStartarea(String startarea) {
	this.startarea = startarea;
}
public int getStartprice() {
	return startprice;
}
public void setStartprice(int startprice) {
	this.startprice = startprice;
}
public int getStartnum() {
	return startnum;
}
public void setStartnum(int startnum) {
	this.startnum = startnum;
}
@Override
public String toString() {
	return "air_S_DTO [airportname=" + airportname + ", airname=" + airname + ", time=" + time + ", starttime="
			+ starttime + ", endtime=" + endtime + ", startarea=" + startarea + ", startprice=" + startprice
			+ ", startnum=" + startnum + "]";
}

}