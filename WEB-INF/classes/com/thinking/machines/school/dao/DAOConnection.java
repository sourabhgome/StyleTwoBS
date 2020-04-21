package com.thinking.machines.school.dao;
import java.sql.*;
public class DAOConnection
{
 private DAOConnection(){}
 public static Connection getConnection() throws DAOException
 {
  try
  {
   Class.forName("com.mysql.cj.jdbc.Driver");
   Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/styleonedb","styleoneuser","styleone");
   return c;
  }catch(Exception e)
  {
   System.out.println("Connection k waqt exception aaya");
   throw new DAOException(e.toString());
  }
 }
}