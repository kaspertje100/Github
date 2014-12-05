
import java.io.IOException;
import java.io.PrintWriter; 
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class registrationServlet
 */
@WebServlet("/registrationServlet")
public class registrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public registrationServlet() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
        response.setContentType("text/html");    
        PrintWriter out = response.getWriter();   
		String userName = request.getParameter("loginusername");
		String password = request.getParameter("password");
		String fullName = request.getParameter("fullName");
		String email = request.getParameter("email");
		String dateOfBirth = request.getParameter("dateOfBirth");
		String phoneNumber = request.getParameter("phoneNumber");
		String companyName = request.getParameter("companyName");
		String companyEmail = request.getParameter("companyEmail");
		String paymentMethod = request.getParameter("paymentMethod");
		getset sets = new getset();

		sets.setUserName(userName);
		sets.setPassword(password);
		sets.setFullName(fullName);
		sets.setEmail(email);
		sets.setDateOfBirth(dateOfBirth);
		sets.setPhoneNumber(phoneNumber);
		sets.setCompanyName(companyName); 
		sets.setCompanyEmail(companyEmail);
		sets.setPaymentMethod(paymentMethod);

		try {
			connectionDb db=new connectionDb();
			DbManager manager = new DbManager();
			Connection conn = db.connect();
			manager.Insert(sets);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();//
		} finally {  
            RequestDispatcher rd=request.getRequestDispatcher("login.jsp");    
            rd.include(request,response);   
		}
	}
}