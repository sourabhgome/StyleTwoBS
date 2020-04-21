package com.thinking.machines.school.tags;
import com.thinking.machines.school.beans.*;
import com.thinking.machines.school.dao.*;
import java.sql.*;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;
public class TableIteratorTagHandler extends BodyTagSupport
{
 private String table;;
 private String name;
 private String orderBy;
 private int index;
 private Connection connection,c;
 private Statement statement,s;
 private ResultSet resultSet,rs;
 public TableIteratorTagHandler()
 {
  reset();
 }
 public void reset()
 {
  this.table="";
  this.name="";
  this.orderBy="";
  this.index=0;
  this.connection=null;
  this.statement=null;
  this.resultSet=null;
 }
 public void setTable(String table)
 { 
  this.table=table;
 }
 public String getTable()
 {
  return this.table;
 }
 public void setName(String name)
 {
  this.name=name;
 }
 public String getName()
 {
  return this.name;
 }
 public void setOrderBy(String orderBy)
 {
  this.orderBy=orderBy; 
 }
 public String getOrderBy()
 {
  return this.orderBy;
 }
 public int doStartTag()
 {
  try
  {
   connection=DAOConnection.getConnection();
   statement=connection.createStatement();
   c=DAOConnection.getConnection();
   s=c.createStatement();
   String sqlStatement="select * from ";
   sqlStatement+=this.table;
   if(this.orderBy.trim().length()!=0 || this.orderBy!=null)
   {
    sqlStatement=sqlStatement+" order by "+this.orderBy;
   }
   resultSet=statement.executeQuery(sqlStatement);
   this.index=0;
   if(!resultSet.next())
   {
    return SKIP_BODY;
   }
   setupData();
  }catch(Exception e)
  {
   System.out.println(e);
   return SKIP_BODY;
  }
  return EVAL_BODY_INCLUDE;
 }
 public int doAfterBody()
 {
  try
  {
   if(!resultSet.next())
   {
    return SKIP_BODY;
   }
   index++;
   setupData();
  }catch(Exception e)
  {
   System.out.println(e);
   return SKIP_BODY;
  }
  return EVAL_BODY_AGAIN;
 }
 public int doEndTag()
 {
  reset();
  return EVAL_PAGE; 
 }
 public void setupData()
 {
  try
  {
   if(table.equalsIgnoreCase("city"))
   {
    CityBean city=new CityBean();
    city.setCode(resultSet.getInt("code"));
    city.setName(resultSet.getString("name").trim());
    pageContext.setAttribute(name,city,PageContext.SESSION_SCOPE);
    pageContext.setAttribute("index",index,PageContext.SESSION_SCOPE);
   }
   else if(table.equalsIgnoreCase("student"))
   {
    StudentBean student=new StudentBean();
    student.setRollNumber(resultSet.getInt("roll_number"));
    student.setName(resultSet.getString("name"));
    student.setAddress(resultSet.getString("address"));
    student.setGender(resultSet.getString("gender"));
    student.setDOB(resultSet.getString("date_of_birth"));
    student.setIndian(resultSet.getBoolean("indian"));
    int temp=resultSet.getInt("city_code");
    System.out.println("For "+student.getName()+" select * from city where code="+temp);
    rs=this.s.executeQuery("select * from city where code="+temp);
    CityBean city=new CityBean();
    if(rs.next())
    {
     city.setCode(rs.getInt("code"));
     city.setName(rs.getString("name").trim());
    }
    student.setCity(city);
    pageContext.setAttribute(name,student,PageContext.SESSION_SCOPE);
    pageContext.setAttribute("index",index,PageContext.SESSION_SCOPE);
   }
  }catch(Exception e)
  {
   System.out.println(e);
  }
 }
}