package com.way2learnonline;

public class StockQuoteService {

	
	public static String sayHello(String name,String city) {
		return "Hello "+name +"  from "+city;
	}
	
	public String getStockPrice(String stockSymbol){
	
		if(stockSymbol.equals("mule")){
			return "100";
		}else if(stockSymbol.equals("ibm")){
			return "200";
		}else{
			return "Stock doesn't exist";
		}
	}
}
