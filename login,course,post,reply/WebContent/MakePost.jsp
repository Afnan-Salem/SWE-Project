<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
 <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
<title>Posts</title>
</head>
<body>

<%
String p =request.getParameter("w");


        try{
           Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbproject", "root", "");
           String strQuery2 = "Select * from posts ";
           Statement st=con.createStatement();
           ResultSet rs2 = st.executeQuery(strQuery2);
         
           int i=st.executeUpdate("INSERT INTO posts(newPosts) values('"+ p +"' )");
      
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