<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="shoppingMall.Product, shoppingMall.ProductRepository" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <link rel= "stylesheet" href="./resources/css/bootstrap.min.css">
<title>상품 목록</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 정보</h1>
		</div>
	</div>
	<%
        String id = request.getParameter("id");
		ProductRepository set = ProductRepository.getInstance();
        Product product = set.getProductById(id);
	%>
	<div class="container">
		<div class="row">
            <div class="col-md-5">
                <img src="./resources/image/<%=product.getFilename()%>" style="width:100%">
            </div>
			<div class="col-md-6">
				<h3><%=product.getPname() %> </h3>
				<p><%=product.getDescription() %>
				<p><strong>상품코드 : </strong><span class="badge badge-danger">
				<%=product.getProductId()%></span>
				<p><strong>제조사</strong> : <%=product.getManufacturer() %>
				<p><strong>분류</strong> : <%=product.getCategory() %>
				<p><strong>재고 수</strong> : <%=product.getUnitsInStock() %>
				<h4><%=product.getUnitPrice() %>원</h4>
				<p><a href="#" class="btn btn-info" type="button">상품 주문 &raquo;</a>
				<a href="./products.jsp"
				class="btn btn-secondary" type="button">상품 목록 &raquo;</a>
				</div>
			</div>
			<hr>
		</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>