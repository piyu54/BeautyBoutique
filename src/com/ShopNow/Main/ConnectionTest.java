package com.ShopNow.Main;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionTest 
{
	public Connection getConnection() {
		Connection connection = null;
		try {
			//Class.forName("com.mysql.cj.jdbc.Driver");
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/BeautyBoutique", "root", "root");

		} catch (Exception e) {
			e.printStackTrace();
		}
		return connection;
}
}
