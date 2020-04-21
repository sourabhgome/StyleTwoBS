package com.thinking.machines.school.servlets;
import com.thinking.machines.school.dao.*;
import com.thinking.machines.school.beans.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.net.*;

public class EditServlet extends HttpServlet
{
 public void doPost(HttpServletRequest req,HttpServletResponse res)
 {
  try
  {
   boolean exists;
   String date;
   StudentBean sb=(StudentBean)req.getAttribute("studentBean");
   Connection c=DAOConnection.getConnection();
   Statement s=c.createStatement();
   System.out.println("update student set name='"+sb.getName()+"',address='"+sb.getAddress()+"',gender='"+sb.getGender()+"',date_of_birth="+sb.getDOB()+",indian="+sb.getIndian()+",city_code="+sb.getCityCode()+" where roll_number="+sb.getRollNumber());
   date=sb.getDOB().replaceAll("-","");
   int r=s.executeUpdate("update student set name='"+sb.getName()+"',address='"+sb.getAddress()+"',gender='"+sb.getGender()+"',date_of_birth="+date+",indian="+sb.getIndian()+",city_code="+sb.getCityCode()+" where roll_number="+sb.getRollNumber());
   c.close();
   ServiceResponse sr=new ServiceResponse();
   sr.setCode(2);
   sr.setSuccess(true);
   sr.setMessage(String.valueOf(sb.getRollNumber()));
   req.setAttribute("serviceResponse",sr);
   RequestDispatcher rd;
   rd=req.getRequestDispatcher("/Students.jsp");
   rd.forward(req,res);
  }catch(Exception e)
  {
   System.out.println(e);
  } 
 } 
}