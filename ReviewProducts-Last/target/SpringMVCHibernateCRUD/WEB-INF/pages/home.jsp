<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Product	 Management Screen</title>
</head>
<body>

		<h4>
			By Category <a href="Books?Category=Book">OnlyBooks</a>
		</h4>

	<div align="center">
		<h1>Product List</h1>
		
		<table border="1">

			<th>product_id</th>
			<th>product_title</th>
			<th>Qstn</th>
			<th>link</th>
			<th>rating</th>
			
			<c:forEach var="product" items="${randomProducts}">
				<tr>

					<td>${product.product_title}</td>
					<td>${product.qstn}</td>
					<td>${product.link}</td>
					<td><a href="editproduct?id=${product.product_id}">Edit</a>
						&nbsp;&nbsp;&nbsp;&nbsp; <a
						href="deleteproduct?id=${product.product_id}">Delete</a></td>
						</td>
						<td><a href="continuedContent?count=${product.product_id}">count</a></td>
				</tr>
			</c:forEach>

		</table>
		<h4>
			New Product Review <a href="newProduct">here</a>
		</h4>
		
		
	</div>
</body>
</html>