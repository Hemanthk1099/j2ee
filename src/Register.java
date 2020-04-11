

import java.io.IOException;
import java.sql.DriverManager;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;


@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
		Class.forName("com.mysql.jdbc.Driver");
	    Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "");
		Statement st=(Statement) con.createStatement();
	    final String name=request.getParameter("name");
		final String usn=request.getParameter("usn");
		final String dob=request.getParameter("dob");
		final String sem="1";
		final String branch=request.getParameter("branch");
		final String initialCgpa="0";
		final String initialSgpa="0";
		final RequestDispatcher requestDispatcher;
		int i=st.executeUpdate("insert into register(Name,usn,dob,semester,branch,CGPA,SGPA1,SGPA2,SGPA3,SGPA4,SGPA5,SGPA6,SGPA7,SGPA8)values('"+name+"','"+usn+"','"+dob+"','"+sem+"','"+branch+"','"+initialCgpa+"','"+initialSgpa+"','"+initialSgpa+"','"+initialSgpa+"','"+initialSgpa+"','"+initialSgpa+"','"+initialSgpa+"','"+initialSgpa+"','"+initialSgpa+"')");
		System.out.println("Data is successfully inserted!");
		requestDispatcher=request.getRequestDispatcher("/login.jsp");		
    	requestDispatcher.forward(request, response);
		//response.getWriter().append("Registered Succesfully now you can "<a href='login.jsp'>Login</a>"");
		}
		catch(Exception e) {
			//System.out.println("kirik");
			e.printStackTrace();
		}
		
		
		
	}

	
}
