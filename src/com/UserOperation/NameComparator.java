package com.UserOperation;

import java.util.Comparator;

public class NameComparator implements Comparator<ViewProducts> {

	@Override
	public int compare(ViewProducts product1, ViewProducts product2) {

		return product1.pName.compareTo(product2.pName);
	}

}
