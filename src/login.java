

import java.io.IOException;
import java.sql.DriverManager;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.ResultSet;
import com.mysql.jdbc.Statement;


@WebServlet("/login")
public class login extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		   try
		      {
		         Class.forName("com.mysql.jdbc.Driver");
		         Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "");
		         final String usn=request.getParameter("usn");
		         final String pwd=request.getParameter("dob");
		         final String query = "SELECT count(*) from register WHERE usn=\'"+usn+"\' AND dob=\'"+pwd+"\' ";
		         final PreparedStatement st = (PreparedStatement) con.prepareStatement(query);
		         final ResultSet rs = (ResultSet) st.executeQuery(query);
		         final RequestDispatcher requestDispatcher;
		         if(rs.next())
		         {
		            final int count=rs.getInt(1);
		            if(count==1) {
		            	final String sem="SELECT semester from register WHERE usn=\'"+usn+"\'";
		            	Statement stmt =  (Statement) con.createStatement();
		            	final ResultSet result=(ResultSet) stmt.executeQuery(sem);
		            	if(result.next()) {
		            	final int semester=result.getInt("semester");
		            	request.setAttribute("usn", usn);
		            	if(semester>8) {
		            		requestDispatcher=request.getRequestDispatcher("/9show.jsp");
		            		requestDispatcher.forward(request, response);
		            	}
		            	else
		            	{
		            	requestDispatcher=request.getRequestDispatcher("/"+String.valueOf(semester)+"sem.jsp");
		            	requestDispatcher.forward(request, response);
		            	}
		                
		            }
		            }
		            	
		            else {
		            	 requestDispatcher=request.getRequestDispatcher("/register.jsp");
		                 requestDispatcher.forward(request, response);
		            }
		          
		            	
		            
		         }
		       
		         
		      }
		      catch(Exception e)
		      {
		         e.printStackTrace();
		      }
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	

}
