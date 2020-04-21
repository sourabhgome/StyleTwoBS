package com.thinking.machines.school.beans;
public class ServiceResponse implements java.io.Serializable
{
 private int code;
 private boolean success;
 private String message;
 
 public void setCode(int code)
 {
  this.code=code;
 }
 public int getCode()
 {
  return this.code;
 }

 public void setSuccess(boolean success)
 {
  this.success=success;
 }
 public boolean getSuccess()
 {
  return this.success;
 }

 public void setMessage(String message)
 {
  this.message=message;
 }
 public String getMessage()
 {
  return this.message;
 }

}
