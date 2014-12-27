<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
<title>Reply</title>
</head>
<body>
<%
String re =request.getParameter("r");
String option = request.getParameter("selectPost");


        try{
           Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbproject", "root", "");
           if(option != (null)){
        	   try{
           String str = "Update replay set newReplay = '"+re+"' where currentPosts =?";
           PreparedStatement ps = con.prepareStatement(str); 
           ps.executeUpdate();
        	   }
        	   catch(Exception e)
        	   {
        	   out.println(e);
        	   }
           }
           
           con.close();
           
        }
        catch(Exception e){
        System.out.print(e);
        e.printStackTrace();
        }
        %>
</body>
</html>