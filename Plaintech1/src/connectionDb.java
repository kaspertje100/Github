	import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.Statement;
	
	public class connectionDb {
	
		private connectionDb instance = null;
	
		private final String USERNAME = "root";
		private final String PASSWORD = "!i1w2g3w#";
		private final String CONN_STRING = "jdbc:mysql://localhost:3306/mydb";
	
		private Connection conn = null;
	
		
		  private Connection con = null;
		  Statement stmt = null;
		  ResultSet rs = null;

		public connectionDb() {}

		public Connection connect() {
		    try {
		        Class.forName("com.mysql.jdbc.Driver");
		        con=DriverManager.getConnection(CONN_STRING, USERNAME, PASSWORD);
		    } catch (Exception e) {
		        e.printStackTrace();
		    }
		    return con;
		}	
	}
