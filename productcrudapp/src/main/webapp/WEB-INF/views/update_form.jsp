<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>
<%@include file="./navbar.jsp"%>
</head>
<body style="background-color: #f7f7f7;">
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<h2 class="text-center mb-3">Change Product Details</h2>
				<form action="${pageContext.request.contextPath }/handle-product" method="post">
				<input type="hidden" value="${product.id }" name="id" />
					<div class="form-group">
						<label for="name">Product Name</label>
						<input type="text"
							class="form-control" id="name" aria-descibedly="emailHelp"
							name="name" placeholder="Enter the Product Name Here"
							value="${product.name }">
					</div>
					<div class="form-group">
						<label for="name">Product Description</label>
						<textarea class="form-control" id="description" name="description"
							rows="5" placeholder="Enter the Product Descritpion" >${product.description }</textarea>
					</div>
					<div class="form-group">
						<label for="name">Product Price</label><input type="text"
							class="form-control" id="price" aria-descibedly="emailHelp"
							name="price" placeholder="Enter the Product Price" value="${product.price }">
					</div>
					<div class="container text-center">
						<a href="${pageContext.request.contextPath }/"
							class="btn btn-outline-danger">Back</a>
						<button type="submit" class="btn btn-warning">Update</button>
					</div>

				</form>
			</div>
		</div>
	</div>

</body>
</html>