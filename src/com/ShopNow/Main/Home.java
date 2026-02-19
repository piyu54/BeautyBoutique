package com.ShopNow.Main;

import java.sql.SQLException;
import java.util.Scanner;
import com.AdminOperation.AdminOperation;
import com.GuestOperation.GuestOperation;
import com.UserOperation.UserOperation;

//

public class Home 

{
	public static void main(String[] args) throws SQLException 
		{
		System.out.println("---------------*Welcome to E-Commerce Based Application*---------------");
		System.out.println("1. User Operation");
		System.out.println("2. Admin Operation");
		System.out.println("3. Guest Operation");
		System.out.println("Select your choice");
		Scanner scanner = new Scanner(System.in);
		int choice = scanner.nextInt();
		
		if(choice ==1) {
			UserOperation userOperation=new UserOperation();
			userOperation.getUserOperation();
		}else if(choice ==2) {
			AdminOperation adminOperation=new AdminOperation();
			adminOperation.getAdminOperation();
		}else if(choice==3) {
			GuestOperation guestOperation=new GuestOperation();
			guestOperation.getGuestOperation();
		}
		scanner.close();
		}
}
