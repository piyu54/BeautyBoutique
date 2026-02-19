package com.UserOperation;

import java.sql.SQLException;
import java.util.Scanner;

import com.AdminOperation.BuyProduct;
import com.Categories.Categories;

public class UserOperation 
{
	public void getUserOperation() throws SQLException
	{
		System.out.println("****************************Welcome to User Operation*******************");
		System.out.println("1. User Registration");
		System.out.println("2.User Login");
		System.out.println("3.Select Categories");
		System.out.println("4.View Products");
		System.out.println("5.Buy product");
		System.out.println("Select your choice");
		Scanner scanner = new Scanner(System.in);
		int choice = scanner.nextInt();
		if (choice == 1) 
		{
			UserRegistration registration = new UserRegistration();
			registration.getRegistration();
		} else if (choice == 2) 
		{
			UserLogin login = new UserLogin();
			login.getLogin();
		} else if (choice == 3) 
		{
			Categories Categories = new Categories();
			Categories.getCategories();
		}
		else if (choice == 4) 
		{
			ViewProducts product = new ViewProducts();
			product.getProduct();
		} else if (choice == 5) 
		{
			BuyProduct buyProduct = new BuyProduct();
			buyProduct.getBuyProduct();
		}
		scanner.close();
	}
	}

