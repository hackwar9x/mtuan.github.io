<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<!DOCTYPE html>
<html>
<head>
	<title>Product List</title>
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

	<!-- Popper JS -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h2 class="text-center">Danh sach san pham</h2>
			</div>
			<div class="panel-body">
                            <table class="table table-bordered">
                                <thread>
                                    <tr>
                                        <th>STT</th>
                                        <th>Thumnail</th>
                                        <th>Title</th>
                                        <th>Price</th>
                                        <th>Discount</th>
                                    </tr>
                                </thread>
                                <tbody>
                                <c:forEach items="${productList}" var="item" varStatus="loop">
                                    <tr>
                                        <td>${loop.index +1}</td>
                                        <td>
                                            <img src="${item.thumbnail}" width="100px"/>
                                        </td>
                                        <td>${item.title}</td>
                                        <td>${item.price}</td>
                                        <td>${item.discount}</td>
                                        <td>
                                            <button class="btn btn-danger">Delete</button>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                            <button class="btn btn-success">Add Product</button>
			</div>
		</div>
	</div>
</body>
</html>
