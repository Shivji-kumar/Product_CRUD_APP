<html>
<head>
<%@include file="./base.jsp"%>
<%@include file="./navbar.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style type="text/css">
.back-img {
	background: url('bkg.jpg');
	width: 100%;
	height: 80vh;
	background-repeat: no-repeat;
	background-size: cover;
}

.crd-ho:hover {
	background-color: #fcf7f7;
}
</style>
</head>
<body style="background-color: #f7f7f7;">
	<div class="container mt-3 back-img">
		<div class="row">
			<div class="col-md-12">
				<h2 class="text-center mb-3">Welcome to Product Application</h2>

				<table class="table table-dark">
					<thead>
						<tr>
							<th scope="col">S.NO</th>
							<th scope="col">Product Name</th>
							<th scope="col">Description</th>
							<th scope="col">Price</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${products }" var="p">
							<tr>
								<th scope="row">Shiv${p.id }</th>
								<td>${p.name }</td>
								<td>${p.description }</td>
								<td class="font-weight-bold ">&#x20B9; ${p.price }</td>
								<td><a href="delete/${p.id }"><i
										class="fa-solid fa-trash text-danger" style="font-size: 20px;"></i></a>
									<a href="update/${p.id }"><i
										class="fas fa-pen-nib text-primary" style="font-size: 20px;"></i></a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div class="container text-center">
					<a href="add-product" class="btn btn-outline-success">Add
						Product</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
