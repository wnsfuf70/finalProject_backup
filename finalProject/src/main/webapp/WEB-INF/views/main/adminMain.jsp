<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>동행 관리자 페이지</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <script src="${js}adminMain/adminMain.js"></script>
 
</head>
<body>


<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand">동행 관리자</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="logout">로그아웃</a></li>
      
      <li><a href="#" id="homeManage_click">홈페이지관리</a></li>
      
      <li><a href="#" id="siteManage_click">사이트이용관리</a></li>
      
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">예약관리
        <span class="caret"></span>
       	</a>
        <ul class="dropdown-menu">
          <li><a href="#" id="airplane_click">항공</a></li>
          <li><a href="#" id="stay_click">숙박</a></li>
          <li><a href="#" id="car_click">렌트카</a></li>
        </ul>
      </li>

    </ul>
  </div>
</nav>


<div class="container-fluid">
  <div class="row content">
    <div class="col-sm-3 sidenav">
      <!-- 예약관리 -->
      <div class="reservation_manager">
      
	      <div class="reservation_manager_content">
		      
	      </div>
      </div>
      <!-- 예약관리 -->
      
  	 <!-- 홈페이지 관리 -->
  	  <div class="homepage_manager">
  	  <h4>홈페이지 관리 메뉴</h4>
      <ul class="nav nav-pills nav-stacked">
        <li><a href="#section1">배너관리</a></li>
        <li><a href="#section2">팝업관리</a></li>
      </ul><br>
      </div>
      <!-- 홈페이지관리 -->
      
      <!-- 사이트이용 -->
      <div class="siteuse_manager">
      <h4>사이트 관리 메뉴</h4>
      <ul class="nav nav-pills nav-stacked">
        <li><a href="#section1">회원관리</a></li>
        <li><a href="#section2">QnA 관리</a></li>
      </ul><br>
      </div>
      <!-- 사이트이용관리 -->
      
      
      <!-- 검색바 -->
      <div class="input-group">
        <input type="text" class="form-control" placeholder="Search Blog..">
        <span class="input-group-btn">
          <button class="btn btn-default" type="button">
            <span class="glyphicon glyphicon-search"></span>
          </button>
        </span>
      </div>
      <!-- 검색바 -->
    </div>
	
	
	
	<!-- 본문 -->
	
	<div class="col-sm-9">
      <h4><small>RECENT POSTS</small></h4>
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
		</div>
    </div>
      
      <div style="position:relative;display:block;height:0;padding:0;overflow:hidden;padding-bottom:56.25%; border:1px solid red">
    		<iframe src="" name="contentFrame" style="position:absolute;top:0;left:0;bottom:0;height:100%;width:100%;border:0;"></iframe>
		</div>

    </div> 
	
	<!-- 본문끝 -->
	
	
  </div>
</div>    

	<footer id="footer" class="footer bg-mega">
			<div class="container">
				<div class="row">
					<div class="main_footer p-top-40 p-bottom-30">
						<div class="col-md-6 text-left sm-text-center">
							<p class="wow fadeInRight" data-wow-duration="1s">
								Made with <i class="fa fa-heart"></i> by <a target="_blank"
									href="http://bootstrapthemes.co">Bootstrap Themes</a> 2016. All
								Rights Reserved
							</p>
						</div>
						<div class="col-md-6 text-right sm-text-center sm-m-top-20">
							<ul class="list-inline">
								<li><a href="">Facebook</a></li>
								<li><a href="">Twitter</a></li>
								<li><a href="">Instagram</a></li>
								<li><a href="">Pinterest</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
	</footer>

</body>
</html>
