import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet {

	// private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// get username and pass from the html page.
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String userName = request.getParameter("username");
		String password = request.getParameter("userpass");

		// put the username and variables in the getset.
		getset sets = new getset();
		sets.setUserName(userName);
		sets.setPassword(password);

		// send the data to the database 
		try {
			connectionDb db=new connectionDb();
			DbManager manager = new DbManager();
			Connection conn = db.connect();
			
			manager.Read(sets);
			// if the userinfo is correct following actions will perform:
			if (manager.authentication == true) {
				HttpSession session = request.getSession();
				session.setAttribute("user", "");
				// setting session to expiry in 30 mins
				session.setMaxInactiveInterval(30 * 60);
				Cookie username = new Cookie("user", userName);
				response.addCookie(username);
				response.sendRedirect("MyAccount.jsp");
				manager.authentication = false;
				// if the userinfo wasn't correct the following actions will perform:
			} else if (manager.authentication == false) {
				out.print("<p style=\"color:red\">Sorry username or password error</p>");
				RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
				rd.include(request, response);
			}
		} catch (ClassNotFoundException e) {

			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();//
		}
	}
}