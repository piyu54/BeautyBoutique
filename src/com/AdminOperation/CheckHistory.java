package com.AdminOperation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

import com.ShopNow.Main.ConnectionTest;

public class CheckHistory 
{
	public void getCheckHistory(String userName) throws SQLException 
	{
		
		System.out.println("User History");
		System.out.println("Enter the username name");
		Scanner scanner = new Scanner(System.in);
		String UName = scanner.next();
		
		try {
			ConnectionTest connectionTest = new ConnectionTest();
			 Connection connection1 = connectionTest.getConnection();
			PreparedStatement preparedStatement1 = connection1
					.prepareStatement("select * from UserRegistration,product where username=?,");
			
		//	String username = " ";
		//	String username1 = userName;
			preparedStatement1.setString(1, UName);
			ResultSet resultSet = preparedStatement1.executeQuery();
			while (resultSet.next()) {
				System.out.println(" User Id :" + resultSet.getInt("RegistrationId"));
				System.out.println(" User First Name :" + resultSet.getString("firstName"));
				System.out.println(" User Last Name : " + resultSet.getString("lastName"));
				 System.out.println(" User-name : " + resultSet.getString("username"));
				 System.out.println("Password :" + resultSet.getString("password"));
				System.out.println(" City:" + resultSet.getString("city"));
				System.out.println(" User Mobile Number : " + resultSet.getString("mobilenumber"));
				System.out.println(" Product Name : " + resultSet.getString("ProductName"));
				System.out.println(" Product Description : " + resultSet.getString("ProductDescription"));
				System.out.println(" Product price : " + resultSet.getInt("ProductPrice"));
				System.out.println(" Product Quantity : " + resultSet.getInt("AvailableQuantity"));
			}
		} catch (Exception e) {
			e.printStackTrace();
	
	}
}
}
