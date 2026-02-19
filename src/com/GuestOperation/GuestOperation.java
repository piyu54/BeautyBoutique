package com.GuestOperation;

import java.sql.SQLException;

import com.AdminOperation.BuyProduct;
import com.UserOperation.UserRegistration;



public class GuestOperation 
{
	public void getGuestOperation() throws SQLException {
	System.out.println("**************Firstly you have to Register to buy a Product*****************");
		
	UserRegistration registration = new UserRegistration();
	registration.getRegistration();
	}
}
