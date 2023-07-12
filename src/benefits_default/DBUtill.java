package benefits_default;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtill {
	

	static String driverName= "com.mysql.jdbc.Driver";
	
	static String url = "jdbc:mysql://localhost:3306/uplift?autoReconnect=true&useSSL=false";
	
	static String userName = "root";
	
	static String password = "1999";
	 
	static Connection con;
	
	public static Connection getconnection() throws ClassNotFoundException, SQLException {
		
		Class.forName(driverName);
		
		con = DriverManager.getConnection(url, userName, password);
		
		return con;
		
	}

}
