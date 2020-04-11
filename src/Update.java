
import java.math.RoundingMode;
import java.text.DecimalFormat;
import java.io.IOException;
import java.sql.DriverManager;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.ResultSet;
import com.mysql.jdbc.Statement;



@WebServlet("/Update")
public class Update extends HttpServlet {
	 private static DecimalFormat df2 = new DecimalFormat("#.##");

	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			try {
				Class.forName("com.mysql.jdbc.Driver");
			    Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "");
			    final String usn=request.getParameter("usn");
			    final String sgpa=request.getParameter("sgpa1");
			    final String sem=request.getParameter("sem");
			    final double sgpa1=Double.parseDouble(sgpa);
			    final String query1="SELECT CGPA from register WHERE usn=\'"+usn+"\'";
			    Statement st =  (Statement) con.createStatement();
			    String cgpa="";
            	final ResultSet result=(ResultSet) st.executeQuery(query1);
            	if(result.next()) {
            		String c=result.getString("CGPA");
            		final int semester=Integer.parseInt(sem);
            		final double cg=Double.parseDouble(c);
            		final double sg=Double.parseDouble(sgpa);
            		final double cgp=((semester-1)*cg+sg)/semester;
            		cgpa=df2.format(cgp);
            	}
			    final RequestDispatcher requestDispatcher;
			    if(!sgpa.equals("Year Back")) {
			    String query="";
			    query=getQuery(sem,cgpa,sgpa,usn);
//			    if(sem.equals("1"))
//			    		query="Update register set CGPA='"+cgpa+"',semester=semester+1,SGPA1='"+sgpa+"' WHERE usn='"+usn+"'";
		       	Statement stmt =  (Statement) con.createStatement();
		       	int count=stmt.executeUpdate(query);
			    	}
			    else
			    {
			    	final String query="Update register set CGPA=\'"+sgpa+"\' WHERE usn=\'"+usn+"\'";
			       	Statement stmt =  (Statement) con.createStatement();
			       	int count=stmt.executeUpdate(query);
			    	
			    }
			    request.setAttribute("sem", sem);
			    request.setAttribute("cgpa", cgpa);
			    request.setAttribute("usn", usn);
			    requestDispatcher=request.getRequestDispatcher("/"+sem+"show.jsp");		
            	requestDispatcher.forward(request, response);
			    
		       	System.out.println(sgpa);
		       	System.out.println(usn);
		        				
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			response.getWriter().append("Served at: ").append(request.getContextPath());
		
	}

	private String getQuery(String sem,String cgpa,String sgpa,String usn) {
		// TODO Auto-generated method stub
		switch (sem) {
		case "1":return "Update register set CGPA='"+cgpa+"',semester=semester+1,SGPA1='"+sgpa+"' WHERE usn='"+usn+"'";
		case "2":return "Update register set CGPA='"+cgpa+"',semester=semester+1,SGPA2='"+sgpa+"' WHERE usn='"+usn+"'";
		case "3":return "Update register set CGPA='"+cgpa+"',semester=semester+1,SGPA3='"+sgpa+"' WHERE usn='"+usn+"'";
		case "4":return "Update register set CGPA='"+cgpa+"',semester=semester+1,SGPA4='"+sgpa+"' WHERE usn='"+usn+"'";
		case "5":return "Update register set CGPA='"+cgpa+"',semester=semester+1,SGPA5='"+sgpa+"' WHERE usn='"+usn+"'";
		case "6":return "Update register set CGPA='"+cgpa+"',semester=semester+1,SGPA6='"+sgpa+"' WHERE usn='"+usn+"'";
		case "7":return "Update register set CGPA='"+cgpa+"',semester=semester+1,SGPA7='"+sgpa+"' WHERE usn='"+usn+"'";
		case "8":return "Update register set CGPA='"+cgpa+"',semester=semester+1,SGPA8='"+sgpa+"' WHERE usn='"+usn+"'";
		
		default:
			return "";
		}
		
	}

}
