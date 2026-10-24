package com.servlet.dbConnection;

import java.sql.Connection;
import java.sql.DriverManager;

public class MySQLConnection {
	
	private final static String url = "jdbc:mysql://localhost:3306/23oct";
	
	private final static String username = "root";
	
	private final static String password = "root";
	
	public static Connection createConnection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			con = DriverManager.getConnection(url,username,password);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return con;
	}

}
