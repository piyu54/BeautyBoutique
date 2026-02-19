package com.AdminOperation;

import java.sql.SQLException;
import java.util.Scanner;

import com.UserOperation.ViewProducts;



public class AdminOperation 
{
	public void getAdminOperation() throws SQLException
	{
		System.out.println("***********************Welcome to Admin Operation*********************");
		System.out.println("1.Add Product Item");
		System.out.println("2. Calculate Bill");
		System.out.println("3. Display Amount to End User");
		System.out.println("4. Check the particular user history");
		System.out.println("5.Check the Quantity of Product");
		System.out.println("Enter your choice");
		Scanner scanner = new Scanner(System.in);
		int choice = scanner.nextInt();
		if(choice==1) {
			BuyProduct product=new BuyProduct();
			product.getBuyProduct();
		}else if(choice==2) {
			ViewProducts product = new ViewProducts();
			product.getProduct();
		}else if(choice==3) {
			Bill bill=new Bill();
			bill.getBill(choice, choice, choice);
			}
		else if(choice==4) {
			CheckHistory checkHistory=new CheckHistory();
			checkHistory.getCheckHistory(null);
		}else if(choice==5) {
			CheckQuantity checkQuantity=new CheckQuantity();
			checkQuantity.getCheckQuantity(null, 0);
		}

	}
	}

