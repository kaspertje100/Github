import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpSession;

public class DbManager extends connectionDb {

	public Connection conn = new connectionDb().connect();
	public boolean authentication;
	public ResultSet rs;
	public PreparedStatement pstmt, pstmt1, pstmt2;

	public void Insert(getset set) throws ClassNotFoundException,
			SQLException {
		try {

			// insert username and password
			String sql = "INSERT INTO logininfo(username, password) VALUES (?,?)";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, set.getUserName());
			pstmt.setString(2, set.getPassword());
			pstmt.executeUpdate();
			// insert user info
			String sql1 = "INSERT INTO userinfo(fullName, email, dateOfBirth, phoneNumber, companyName, companyEmail, paymentMethod) VALUES (?,?,?,?,?,?,?)";
			pstmt1 = conn.prepareStatement(sql1);
			pstmt1.setString(1, set.getFullName());
			pstmt1.setString(2, set.getEmail());
			pstmt1.setString(3, set.getDateOfBirth());
			pstmt1.setString(4, set.getPhoneNumber());
			pstmt1.setString(5, set.getCompanyName());
			pstmt1.setString(6, set.getCompanyEmail());
			pstmt1.setString(7, set.getPaymentMethod());
			pstmt1.executeUpdate();
			conn.close();
		} catch (Exception e) {
			System.out.println(e);
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
	}

	public void Read(getset set) throws ClassNotFoundException,
			SQLException {
		try {
			String sql = "SELECT * FROM logininfo where username='"+ set.getUserName() +"' and password='"+ set.getPassword() +"';";
			pstmt2 = conn.prepareStatement(sql);
			rs = pstmt2.executeQuery(sql);

			if (rs.next()) {
				authentication = true;
				conn.close();
			} else {
				authentication = false;
				conn.close();
			}
			pstmt2.close();
			rs.close();
			conn.close();
		} catch (Exception e) {
			System.out.println(e);
		} finally {
			try {
				if (pstmt2 != null)
					pstmt2.close();
			} catch (SQLException se2) {
			}
			try {
				if (conn != null)
					conn.close();
			} catch (SQLException se) {
				se.printStackTrace();
			}
		}
	}
}