<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
<title>title here</title>
</head>
<body>
<%
		   Class.forName("com.mysql.jdbc.Driver");
           Connection con2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbproject", "root", "");
           Statement sta=con2.createStatement();
		   ResultSet rs4 = sta.executeQuery("Select * from Courses"); %>
<table>
    <tbody>
    <% while (rs4.next()) {%>
      <tr>
        <td>
          <%=rs4.getString("courseName")%>
        </td>
      </tr>
    <%}%>
</tbody>
</table>
</body>
</html>