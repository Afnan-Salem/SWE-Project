<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
 <%@ page import="java.sql.*" %>
 <jsp:include page="MakeReply.jsp" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
<title>Posts</title>
</head>
<body>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbproject", "root", "");
Statement sta=con2.createStatement();
ResultSet rs4 = sta.executeQuery("Select * from posts");
%>

<table>
    <tbody>
    <% out.println("Select post for replying on it : "); 
    while (rs4.next()) {%>
      <tr> 
        <td>
        <input type="radio" name="selectPost" id="selectPost" value="Reply" />
          <%=rs4.getString("newPosts")%>
        </td>
      </tr>
    <%}%>
</tbody>
</table>
<a href="formreply.jsp">Reply</a>
<a href="link.jsp">Back</a>
</body>
</html>