<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
       <%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
<title>Insert title here</title>
</head>
<body>

<%
String cn=request.getParameter("courseName");
String cp=request.getParameter("cpassword");


        try{
         Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbproject", "root", "");
           String strQuery2 = "Select * from Courses where courseName='" + cn + "'" ;
           Statement st=con.createStatement();
           ResultSet rs2 = st.executeQuery(strQuery2);
           if(rs2.next()){
        	   out.println("Course name is already exist , Please Change it"); 
           }
           else{
        	  %> 
        	   <jsp:forward page="LoginEx.jsp"> </jsp:forward> 
        	 <%   int i=st.executeUpdate("Insert into Courses(courseName,courseID) values('"+cn+"',+ '"+cp+"')");
           }
           
           rs2.close();
           st.close();
           con.close();
        }
        catch(Exception e){
        System.out.print(e);
        e.printStackTrace();
        }
        %>
        
</body>
</html>