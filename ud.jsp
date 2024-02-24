<%@page  import="java.sql.*"%>

<%
  String s1,s2;
  s1=request.getParameter("t1");
  s2=request.getParameter("t2");

  Connection con;
  Statement stmt;
  try
   { 
     Class.forName("com.mysql.jdbc.Driver");
  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/insta","root","Ankit@123");
  stmt=con.createStatement();
  int k=stmt.executeUpdate("insert into details values('"+s1+"','"+s2+"')");
  con.close();
  out.println("one rec inserted");
  }
  
  catch(Exception e)
  {
  out.println(e);
  } 

%>
<jsp:forward page="instgm.html" />