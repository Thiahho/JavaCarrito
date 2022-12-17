package conexion;

import java.sql.DriverManager;
import java.sql.Connection;

public class Conexion {
	Connection con;
	String url="jdbc:mysql://localhost:3306/zapas";
	String user="root";
	String pass="123456";
	
	public Connection Conexion() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con= DriverManager.getConnection(url, user,pass);
		} catch (Exception e) {
		}
		return con;
		
	}
}
