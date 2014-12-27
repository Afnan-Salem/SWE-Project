package web.net;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;

import java.sql.*;

/**
 * Servlet implementation class Login
 */
@WebServlet(description = "Login Servlet", urlPatterns = { "/login" })
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("We are in Service method of Servlet");
		
		
		String cn = request.getParameter("courseName");
		String cd = request.getParameter("cpassword");
		
		String msg2 = "";
		
		Connection conn = null;
		String url = "jdbc:mysql://localhost:3306/";
		String dbName = "dbproject";
		String driver = "com.mysql.jdbc.Driver";
		String dbUserName = "root";
		String dbPassword = "";
		
		 try{
			 
			 Class.forName(driver).newInstance();
			 conn = DriverManager.getConnection(url+dbName , dbUserName , dbPassword);
			 conn.setReadOnly(true); 
		     String strQuery2 = "Select * from Courses where courseName='" + cn + "'" ;
			 Statement st2 = conn.createStatement();
		     ResultSet rs2 = st2.executeQuery(strQuery2);
		     if(rs2.next()){
		    	 msg2 = "Change Course name"; 
		     }
		     else
				{
					msg2 = "Your Course Created Successfully";
				}
		     rs2.close();
		     st2.close();
		      
		 }catch (Exception ex) {
			 ex.getStackTrace();
		 }
		 
		/*
		if(un.equals(username) && pw.equals(password))
		{
			msg = "Hello " + un + " Your login is successful";
		}
		else
		{
			msg = "Hello " + un + " Your login is Failed!";
		}
		*/
		 
		response.setContentType("text/html");
		PrintWriter out2 = response.getWriter();
		out2.println("<font size ='6' color=red>" + msg2 + "</font>");
	}

}
