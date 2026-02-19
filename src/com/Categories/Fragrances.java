package com.Categories;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import com.AdminOperation.BuyProduct;
import com.ShopNow.Main.ConnectionTest;
import com.UserOperation.NameComparator;
import com.UserOperation.ViewProducts;

public class Fragrances 
{
	int pId;
	 String pName;
	 String pdescp;
	 int quantity;
	  int price;
		public Fragrances(int pId, String pName, String pdescp,  int quantity,int price) {

			this.pId = pId;
			this.pName = pName;
			this.pdescp = pdescp;
			this.quantity = quantity;
			this.price = price;
		}

		public int getpId() {
			return pId;
		}

		public void setpId(int pId) {
			this.pId = pId;
		}

		public String getpName() {
			return pName;
		}

		public void setpName(String pName) {
			this.pName = pName;
		}

		public String getPdescp() {
			return pdescp;
		}

		public void setPdescp(String pdescp) {
			this.pdescp = pdescp;
		}

		public int getQuantity() {
			return quantity;
		}

		public void setQuantity(int quantity) {
			this.quantity = quantity;
		}
		public int getPrice() {
			return price;
		}

		public void setPrice(int price) {
			this.price = price;
		}

		public  void getFragrances() throws SQLException {
			System.out.println("------------List of Products------------");
			Connection connection = null;
			PreparedStatement preparedStatement = null;
			ResultSet resultSet = null;
			try {
				ConnectionTest connectionTest = new ConnectionTest();
				connection = connectionTest.getConnection();
				preparedStatement = connection.prepareStatement("select * from fragrances");
				resultSet = preparedStatement.executeQuery();
				List<ViewProducts> list = new ArrayList<ViewProducts>();
				while (resultSet.next()) {
					pId = resultSet.getInt("productid");
					pName = resultSet.getString("ProductName");
					pdescp = resultSet.getString("ProductDescription");
					price = resultSet.getInt("ProductPrice");
					quantity = resultSet.getInt("AvailableQuantity");
					list.add(new ViewProducts(pId, pName, pdescp, quantity,price));
				}
				Collections.sort(list, new NameComparator());
				for (ViewProducts p : list) {
					System.out.println("****************************************");
					System.out.println("Product Id : " + p.getpId());
					System.out.println("Product Name : " + p.getpName());
					System.out.println("Product Description : " + p.getPdescp());
					System.out.println("Product Quantity : " + p.getQuantity());
					System.out.println("Product Price : " + p.getPrice());
					System.out.println("****************************************");

				}
				BuyProduct buyProduct = new BuyProduct();
				buyProduct.getBuyProduct();
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				connection.close();
				preparedStatement.close();
				resultSet.close();
			}
		
	
	}
}
