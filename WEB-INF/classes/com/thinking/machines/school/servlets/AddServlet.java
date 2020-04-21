package com.thinking.machines.school.servlets;
import com.thinking.machines.school.dao.*;
import com.thinking.machines.school.beans.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.net.*;

public class AddServlet extends HttpServlet
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
   System.out.println("insert into student values("+sb.getRollNumber()+",'"+sb.getName()+"','"+sb.getAddress()+"','"+sb.getGender()+"',"+sb.getDOB()+","+sb.getIndian()+","+sb.getCityCode()+")");
   date=sb.getDOB().replaceAll("-","");
   int r=s.executeUpdate("insert into student values("+sb.getRollNumber()+",'"+sb.getName()+"','"+sb.getAddress()+"','"+sb.getGender()+"',"+date+","+sb.getIndian()+","+sb.getCityCode()+")");
   c.close();
   ServiceResponse sr=new ServiceResponse();
   sr.setCode(1);
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