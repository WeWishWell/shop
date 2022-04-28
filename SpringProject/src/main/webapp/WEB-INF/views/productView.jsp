<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./include/header.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>productView.jsp</title>
</head>
<body>
	<!-- <table border="1"> -->
	<!-- <tr><th>상품명</th><th>카테고리</th><th>가격</th></tr> -->
	<%-- <c:forEach var="b" items="${data}"> --%>
	<%-- <tr><td><a href="productDetail?id=${b.id}">${b.name}</a></td> --%>
	<%-- <%-- <td>${b.disc}</td> --%>
	<%-- <td>${b.category }</td> --%>
	<%-- <td>${b.price }</td></tr> --%>
	<%-- </c:forEach> --%>
	<!-- </table> -->

	<div>
		<div class="row" style="width: 1200px; margin: auto;">
			<h2>&emsp;&emsp;상품정보</h2>
			<hr>
			<c:forEach var="b" items="${data}">
				<!-- card 1 -->
				<div style="margin-bottom: 20px; width: 300px;">
					<div class="card">
						<!--             <div class="card-header"> -->
						<%--               <h4><b>${b.name}</b></h4> <h6>${b.price }</h6> --%>
						<!--             </div> -->
						<a href="productDetail?id=${b.id}" style="width: 100%; text-align: center;"> 
							<img src="resources/images/pro_${b.id}.png" alt="Image" style="max-width: 100%;" />
						</a>
						<div class="card-body">
							<h6>
							<a href="productDetail?id=${b.id}"
							style="color: black; text-decoration: none;">
							<b>${b.name}</b>
							</a>
							</h6>
							<h6>${b.price}원</h6>
							<%--               <p class="card-text">${b.disc}</p> --%>
							<%--               <a href="productDetail?id=${b.id}" class="btn btn-primary">More</a> --%>
						</div>
					</div>
				</div>
			</c:forEach>

		</div>
	</div>


</body>
</html>