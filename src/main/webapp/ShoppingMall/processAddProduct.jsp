<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="shoppingMall.Product, shoppingMall.ProductRepository" %>
<%@ page import="com.oreilly.servlet.*, com.oreilly.servlet.multipart.*, java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
                
        String filename = "";
        String realFolder = "C:/Users/nc404/Desktop/작업/002_Programming/1_Java/JSP_Polytech/src/main/webapp/shoppingMall/resources/images/";
        int maxSize = 5*1024*1024;
        String encType="utf-8";
        
        MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());
                                              
		String productId = multi.getParameter("productId");
		String name = multi.getParameter("name");
		String unitPrice  = multi.getParameter("unitPrice");
		String description = multi.getParameter("description");
		String manufacturer = multi.getParameter("manufacturer");
		String category = multi.getParameter("category");
		String unitsInStock = multi.getParameter("unitInStock");
		String condition = multi.getParameter("condition");
		
        Integer price;
		
		if(unitPrice.isEmpty()){
			price=0;
		}
		else{
			price = Integer.valueOf(unitPrice);
		}
		long stock;
		
		if(unitsInStock.isEmpty()){
			stock = 0;
		}
		else{
			stock=Long.valueOf(unitsInStock);
		}
		
                Enumeration files = multi.getFileNames();
                String fname = (String) files.nextElement();
                String fileName = multi.getFilesystemName(fname);
                
		ProductRepository set = ProductRepository.getInstance();
		Product newProduct = new Product();
		newProduct.setProductId(productId);
		newProduct.setPname(name);
		newProduct.setUnitPrice(price);
		newProduct.setDescription(description);
		newProduct.setManufacturer(manufacturer);
		newProduct.setCategory(category);
		newProduct.setUnitsInStock(stock);
		newProduct.setCondition(condition);
        newProduct.setFilename(fileName);
		
		set.addProduct(newProduct);
		
		response.sendRedirect("products.jsp");
	
	%>
</body>
</html>