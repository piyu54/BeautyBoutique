package com.Categories;

import java.sql.SQLException;
import java.util.Scanner;
import com.AdminOperation.AdminOperation;
import com.GuestOperation.GuestOperation;
import com.UserOperation.UserOperation;

public class Categories 
{
	public static void getCategories() throws SQLException
	{
		System.out.println("---------------*Welcome to Shopping Select Categories*---------------");
		System.out.println("1. Body Care");
		System.out.println("2. Cosmetics");
		System.out.println("3. Haircare");
		System.out.println("4. Skincare");
		System.out.println("5. Fragrances");
		System.out.println("Select your choice");
		Scanner scanner = new Scanner(System.in);
		int choice = scanner.nextInt();
		
		if(choice ==1) 
		{
			Bodycare Bodycare=new Bodycare(choice, null, null, choice, choice);
			Bodycare.getbodycare();
		}
		else if(choice ==2) 
		{
			Cosmetics Cosmetics=new Cosmetics(choice, null, null, choice, choice);
			Cosmetics.getCosmetics();
		}
		else if(choice==3) 
		{
			Haircare Haircare=new Haircare(choice, null, null, choice, choice);
			Haircare.getHaircare();
		}
		else if(choice==4) 
		{
			Skincare Skincare=new Skincare(choice, null, null, choice, choice);
			Skincare.getSkincare();
		}
		else if(choice==5) 
		{
			
			Fragrances Fragrances=new Fragrances(choice, null, null, choice, choice);
			Fragrances.getFragrances();
		}

	}
}
