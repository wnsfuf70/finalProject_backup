<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="rentAdd" method="post" name="rentAdd" onsubmit="return addcheck();" enctype="multipart/form-data">
				<table>
					<tr>
						<th>렌트카고유번호</th>
						<td><input type="text" name="rent_no" maxlength="10"></td>
					</tr>
					<tr>
						<th>사용km</th>
						<td><input type="text" name="use_km" maxlength="10"></td>
					</tr>
					<tr>
						<th>자동차수량</th>
						<td><input type="text" name="car_count" maxlength="10"></td>
					</tr>
					<tr>
						<th>보험유무</th>
						<td><input type="checkbox" name="insurance" value="적용">적용</td>
						<td><input type="checkbox" name="insurance" value="미적용">미적용</td>
					</tr>
					<tr>
						<th>자동차번호</th>
						<td><input type="text" name="car_num" maxlength="10"></td>
					</tr>
					<tr>
						<th>이미지</th>
						<td><input type="file" name="car_img" accept="images/car/*" ></td>
					</tr>
					<tr>
						<th colspan="2">
							<input type="submit" name="add" value="추가">
							<input type="reset" name="reset" value="취소">
						</th>
					</tr>
				</table>
			</form>
</body>
</html>