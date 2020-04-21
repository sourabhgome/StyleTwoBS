package com.thinking.machines.school.servlets;
import com.thinking.machines.school.dao.*;
import com.thinking.machines.school.beans.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.net.*;

public class DeleteServlet extends HttpServlet
{
 public void doPost(HttpServletRequest req,HttpServletResponse res)
 {
  try
  {
   int rollNumber;
   boolean exists;
   StudentBean sb=(StudentBean)req.getAttribute("studentBean");
   rollNumber=sb.getRollNumber();
   Connection c=DAOConnection.getConnection();
   Statement s=c.createStatement();
   int r=s.executeUpdate("delete from student where roll_number="+rollNumber);
   c.close();
   ServiceResponse sr=new ServiceResponse();
   sr.setCode(3);
   sr.setSuccess(true);
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