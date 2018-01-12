<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>조회</title>
</head>
<body>

<form action="" method="post" name="rentCarForm">
	<table>
		<c:forEach var="car" items="${dtos}">
			<tr>
				<td rowspan="3"><img src="${images}${car.car_img}" width="120px" height="140px"></td>
				<td>${car.car_name}</td>
				<td rowspan="3">예약하기</td>
			</tr>
			<tr>
				<td>${car.car_price}</td>
			</tr>
			<tr>
				<td>${car.car_addprice}</td>
			</tr>
		</c:forEach>
	</table>
	<table>
		<tr>
			<td>
				<c:if test="${blockStartNumber!=1}">
					<input type="button" value="[◀◀]" onclick="window.location='carList?requestPage=${startPage}'">
					<input type="button" value="[◀]" onclick="window.location='carList?requestPage=${blockStartNumber-1}'">
				</c:if>
				<c:forEach var="n" begin="${blockStartNumber}" end="${blockEndNumber}">
					<c:if test="${n!=pageNum}">
						<a href="진입컨트롤러?requestPage=${n}">${n}</a>
					</c:if>
					<c:if test="${n==pageNum}">
						<b>${n}</b>
					</c:if>
				</c:forEach>
				<c:if test="${blockEndNumber!=endPage}">
					<input type="button" value="[▶]" onclick="window.location='carList?requestPage=${blockEndNumber+1}'">
					<input type="button" value="[▶▶]" onclick="window.location='carList?requestPage=${endPage}'">
				</c:if>
			</td>
		</tr>
	</table>
</form>

</body>
</html>