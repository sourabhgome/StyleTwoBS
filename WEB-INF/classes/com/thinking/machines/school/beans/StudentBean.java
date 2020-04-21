package com.thinking.machines.school.beans;
public class StudentBean implements java.io.Serializable
{
 private int rollNumber;
 private String name;
 private String gender;
 private String DOB;
 private String address;
 private boolean indian;
 private CityBean city;
 private int cityCode;
 private String cityName;
 public StudentBean()
 {
  rollNumber=0;
  name="";
  gender="";
  DOB="";
  address="";
  indian=false;
  city=null;
 }
 public void setRollNumber(int rollNumber)
 {
  this.rollNumber=rollNumber;
 }
 public int getRollNumber()
 {
  return this.rollNumber;
 }
 public void setName(String name)
 {
  this.name=name;
 }
 public String getName()
 {
  return this.name;
 }
 public void setGender(String gender)
 {
  this.gender=gender;
 }
 public String getGender()
 {
  return this.gender;
 }
 public void setDOB(String DOB)
 {
  this.DOB=DOB;
 }
 public String getDOB()
 {
  return this.DOB;
 }
 public void setAddress(String address)
 {
  this.address=address;
 }
 public String getAddress()
 {
  return this.address;
 }
 public void setIndian(boolean indian)
 {
  this.indian=indian;
 }
 public boolean getIndian()
 {
  return this.indian;
 }
 public void setCity(CityBean city) 
 {
  this.city=city;
  //this.cityCode=city.getCode();
  //this.cityName=city.getName();
 }
 public CityBean getCity()
 {
  return this.city;
 }
 public void setCityCode(int cityCode)
 {
  this.cityCode=cityCode;
 }
 public int getCityCode()
 {
  return this.cityCode;
 }
 public void setCityName(String cityName)
 {
  this.cityName=cityName;
 }
 public String getCityName()
 {
  return this.cityName;
 }
}