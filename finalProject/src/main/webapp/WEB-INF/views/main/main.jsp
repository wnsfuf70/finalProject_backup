<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp"%>

<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<title>Pouseidon - Free HTML5 Model Agency Bootstrap Template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">


<link rel="icon" type="image/png" href="favicon.ico">

<!--Google Fonts link-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Crimson+Text:400,400i,600,600i,700,700i" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i" rel="stylesheet">

<link rel="stylesheet" href="${css}slick.css">
<link rel="stylesheet" href="${css}slick-theme.css">
<link rel="stylesheet" href="${css}animate.css">
<link rel="stylesheet" href="${css}fonticons.css">
<link rel="stylesheet" href="${css}font-awesome.min.css">
<link rel="stylesheet" href="${css}bootstrap.css">
<link rel="stylesheet" href="${css}magnific-popup.css">
<link rel="stylesheet" href="${css}bootsnav.css">
<link rel="stylesheet" href="${css}carousel.css">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!--For Plugins external css-->
<!--<link rel="stylesheet" href="${css}plugins.css" />-->

<!--Theme custom css -->
<link rel="stylesheet" href="${css}style.css">
<!--<link rel="stylesheet" href="${css}colors/maron.css">-->

<!--Theme Responsive css-->
<link rel="stylesheet" href="${css}responsive.css" />

<script src="${js}vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
</head>

<body data-spy="scroll" data-target=".navbar-collapse">


	<!-- Preloader -->

	<div id="loading">
		<div id="loading-center">
			<div id="loading-center-absolute">
				<div class="object"></div>
				<div class="object"></div>
				<div class="object"></div>
				<div class="object"></div>
				<div class="object"></div>
				<div class="object"></div>
				<div class="object"></div>
				<div class="object"></div>
				<div class="object"></div>
				<div class="object"></div>
			</div>
		</div>
	</div>

	<!--End off Preloader -->


	<div class="culmn">
		<!--Home page style-->

		<nav
			class="navbar navbar-default navbar-fixed white no-background bootsnav text-uppercase">
			<!-- Start Top Search -->
			<div class="top-search">
				<div class="container">
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-search"></i></span>
						<input type="text" class="form-control" placeholder="Search">
						<span class="input-group-addon close-search"><i
							class="fa fa-times"></i></span>
					</div>
				</div>
			</div>
			<!-- End Top Search -->

			<div class="container">
				<!-- Start Atribute Navigation -->
				<div class="attr-nav">
					<ul>
						<li class="search"><a href="#"><i class="fa fa-search"></i></a></li>
					</ul>
				</div>
				<!-- End Atribute Navigation -->

				<!-- Start Header Navigation -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#navbar-menu">
						<i class="fa fa-bars"></i>
					</button>
					<a class="navbar-brand" href="main"> 
						홈<img src="#" class="logo logo-display" alt=""> 
						<img src="#"class="logo logo-scrolled" alt="">
					</a>
				</div>
				<!-- End Header Navigation -->

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="navbar-menu">
					<ul class="nav navbar-nav navbar-right" data-in="fadeInDown"
						data-out="fadeOutUp">
						<li><a href="storyStart">이야기</a></li>
						<li><a href="whereStart">어디갈까</a></li>
						<li><a href="recomandStart">추천여행기</a></li>
						<li class="dropdown"><a class="dropdown-toggle"
							data-toggle="dropdown" href="#">예약 </a>
							<ul class="dropdown-menu">
								<li><a href="stayReservation">숙박 예약</a></li>
								<li><a href="airReservation">항공 예약</a></li>
								<li><a href="rentReservation">렌트카 예약</a></li>
							</ul>
						</li>
					<c:if test="${sessionScope.mem_id == null}">					
						<li><a href="" data-toggle="modal" data-target="#login">로그인</a></li>
						<li><a href="" data-toggle="modal" data-target="#register">회원가입</a></li>
					</c:if>
					<c:if test="${sessionScope.mem_id != null}">
						<li class="dropdown">
						<a class="dropdown-toggle"
							data-toggle="dropdown" href="#">${sessionScope.mem_id}님</a>
							<ul class="dropdown-menu">
								<li><a href="xxxStart">계획하기</a></li>
								<li><a href="xxxStart">여행후기</a></li>
								<li><a href="myPageStart">마이페이지</a></li>
							</ul>
						</li>
								
						<li><a href="logout" >로그아웃</a></li>
					</c:if>
					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</div>

		</nav>
		
		
<!-- 모달 추가 시작 login -->
	<div class="row">
		<div class="modal" id="login" tabindex="-1"  >
			<!-- #model로 지정했으므로 id="model" -->
			<div class="modal-dialog" style="z-index:9999">
				<div class="modal-content">
					<div class="modal-header">
						로그인
						<button class="close" data-dismiss="modal">&times;</button>
					</div>
					
					<div class="modal-body" style="text-align: center;">
					<center><img src="${images}/Login.png"></center>
						<form id="login-form" action="login" method="post" role="form" style="display: block;">
							
							<div class="form-group">
								<input type="text" name="userId" id="userId" tabindex="1" class="form-control" placeholder="아이디" value="">
							</div>
							
							<div class="form-group">
								<input type="password" name="userPassword" id="userPassword" tabindex="2" class="form-control" placeholder="비밀번호" value="">
							</div>
							
							<div class="form-group">
								<div class="row">
									<div class="col-sm-6 col-sm-offset-3">
										<input type="submit" name="login-submit" id="login-submit" tabindex="4" class="btn btn-success" value="로그인">
									</div>
								</div>
							</div>
							
							<div class="form-group">
								<div class="row">
									<div class="col-lg-12">
										<div class="text-center">
											<a href="https://phpoll.com/recover" tabindex="5" class="forgot-password"> 아이디 | 비밀번호 찾기</a>
										</div>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>	
<!-- 모달 추가 종료 login-->		
		
		
<!-- 모달 추가 시작 register -->
	<div class="row">
		<div class="modal" id="register" tabindex="-1">
			<!-- #model로 지정했으므로 id="model" -->
			<div class="modal-dialog" style="z-index:9999">
				<div class="modal-content" style="height:950px">
					<div class="modal-header">
						회원가입
						<button class="close" data-dismiss="modal">&times;</button>
					</div>
					<div class="modal-body" style="text-align: center;">
		
			<!-- 회원가입 -->
			<div class="col-md-12">
				<form role="form" action="register" method="post" role="form" style="display: block;">
					<div class="form-group">
						<label for="username">사용자 이름</label> 
						<input type="text" class="form-control" id="username" placeholder="이름을 입력해 주세요" name="name">
					</div>

	<!-- 
		vo.setEmail1(req.getParameter("email1"));
		vo.setEmail1(req.getParameter("email2"));
		vo.setSex(req.getParameter("sex"));
		vo.setPhone1(req.getParameter("phone1"));
		vo.setPhone2(req.getParameter("phone2"));
		vo.setPhone3(req.getParameter("phone3"));
		vo.setBirth(req.getParameter("birth"));
		vo.setGrade(req.getParameter("grade"));
		vo.setFaceImg(req.getParameter("faceImg"));
		vo.setIntroduce(req.getParameter("introduce")); -->

					<div class="form-group">
						<label for="InputId">아이디</label> 
						<!-- <div id="chkIdOk"><span class="glyphicon glyphicon-ok"></span></div>
						<div id="chkIdRemove"><span class="glyphicon glyphicon-remove"></span></div> -->
						<div id="chkIdMsg"></div>
						<input type="text" class="form-control" id="InputId" placeholder="아이디(영문+숫자/6~15이내)" required="required" name="mem_id">
					</div>

					<div class="form-group">
						<label for="InputPassword1">비밀번호</label> 
						<input type="password" class="form-control" id="InputPassword1" placeholder="비밀번호(영문+숫자/6~15이내)" required="required" name="password">
					</div>

					<div class="form-group">
						<label for="InputPassword2">비밀번호 확인</label> 
						<!-- <div id="chkPwdOk"><span class="glyphicon glyphicon-ok"></span></div>
						<div id="chkPwdRemove"><span class="glyphicon glyphicon-remove"></span></div> -->
						<div id="chkPwdMsg"></div>
						<input type="password" class="form-control" id="InputPassword2" placeholder="비밀번호 확인" required="required">
						<!-- <p class="help-block">비밀번호 확인을 위해 다시 한번 입력 해 주세요</p> -->
					</div>

					<div class="form-group">
						<label for="InputEmail">이메일 주소</label> 
						<input type="email" class="form-control" id="InputEmail" placeholder="E-Mail(비밀번호 분실 시 필요합니다)" required="required" name="email">
					</div>

					<div class="form-group">
						<label for="InputBirthday">생년월일</label> 
						<input type="date" class="form-control" id="InputBirthday" placeholder="생년월일을 선택해 주세요" required="required" name="birth">
					</div>

					<div class="form-group">
						<label for="InputGender">성별</label>&nbsp;&nbsp;&nbsp; 
						<label> <input name="sex" type="radio" value="Male" checked> 남자  </label>
						&nbsp;&nbsp;&nbsp; 
						<label><input name="sex" type="radio" value="Female"> 여자</label>
					</div>

					<div class="form-group">
						<label for="username">휴대폰 인증</label>
						<div class="input-group">
							<input type="tel" class="form-control" id="username" placeholder="- 없이 입력해 주세요" name="phone"> 
							<span class="input-group-btn">
								<button class="btn btn-success">
									인증번호 전송<i class="fa fa-mail-forward spaceLeft"></i>
								</button>
							</span>
						</div>
					</div>

					<div class="form-group">
						<label for="username">인증번호 입력</label>
						<div class="input-group">
							<input type="text" class="form-control" id="username" placeholder="인증번호"> <span class="input-group-btn">
								<button class="btn btn-success">
									인증번호 입력<i class="fa fa-edit spaceLeft"></i>
								</button>
							</span>
						</div>
					</div>

					<div class="form-group">
						<label>약관 동의</label>
						<div data-toggle="buttons">
							<label class="btn btn-primary active"> 
							<span class="fa fa-check"></span> 
							<input id="agree" type="checkbox" autocomplete="off" checked>
							</label> <a href="#">이용약관</a>에 동의합니다.
						</div>
					</div>

					<div class="form-group text-center">
						<button type="submit" class="btn btn-info">회원가입<i class="fa fa-check spaceLeft"></i></button>
						<button type="submit" class="btn btn-warning">가입취소<i class="fa fa-times spaceLeft"></i></button>
					</div>

				</form>
			</div>
			<!-- 회원가입 종료 -->
					</div>
				</div>
			</div>
		</div>
	</div>		


		<!-- 모달 추가 종료 register -->	

		<!--Home Sections-->

		<section id="hello" class="home bg-mega">
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
				</ol>

				<!-- Wrapper for slides -->
				<div class="carousel-inner" role="listbox">
					<div class="item active">
						<img src="${images}travel/Travel1.jpg" alt="travel1">
						<div class="carousel-caption">
							<h3>New York</h3>
							<p>The atmosphere in New York is lorem ipsum.</p>
						</div>
					</div>

					<div class="item">
						<img src="${images}travel/Travel2.jpg" alt="travel2">
						<div class="carousel-caption">
							<h3>Chicago</h3>
							<p>Thank you, Chicago - A night we won't forget.</p>
						</div>
					</div>

					<div class="item">
						<img src="${images}travel/Travel3.jpg" alt="travel3">
						<div class="carousel-caption">
							<h3>LA</h3>
							<p>Even though the traffic was a mess, we had the best time.</p>
						</div>
					</div>
				</div>

				<!-- Left and right controls -->
				<a class="left carousel-control" href="#myCarousel" role="button"
					data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#myCarousel" role="button"
					data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
		</section>
		<!--End off Home Sections-->


		<!--About Sections-->
		<section id="feature" class="feature p-top-100">
			<div class="container">
				<div class="row">
					<div class="main_feature">

						<div class="col-md-6 m-top-120">
							<!-- Head Title -->
							<div class="feature_content wow fadeIn m-top-40">
								<h3><span color=#2786FF>1월의</span> 베스트 여행기</h3>
							</div>
							<div class="separator_left"></div>
							<div class="head_title">
								<h2>노르망디의 짧은 하루</h2>
								<h5>
									<em>2018년 01월 06일</em>&emsp;<em>|</em>&emsp; <em>Traveler
										스칼렛</em>
								</h5>
							</div>
							<!-- End off Head Title -->
							<div class="feature_btns m-top-30">
								<a href="" class="btn btn-default text-uppercase">여행기 보기 <i
									class="fa fa-long-arrow-right"></i>
								</a>
							</div>

						</div>
						<div class="col-md-6">
							<div class="feature_photo wow fadeIn sm-m-top-40">
								<div class="photo_border"></div>
								<div class="feature_img">
									<img src="${images}travel/BestTravel.jpg" alt="" />
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--End off row-->
			</div>
			<!--End off container -->

			<br><br>
			<hr />
			
			
			
			<!--Our Work Section-->
			<div class="container">
				<div class="row">
				
				<div  class="head_title text-left sm-text-center wow fadeInDown">
					<h2><span>추천</span> 여행기</h2>
					<h5>
						<em>Some our recent works is here. Discover them now!</em>
					</h5>
					<div class="separator_left"></div>
				</div>
				
					<div class="main_work">

						<div class="col-md-7 col-md-offset-5 col-sm-12 col-xs-12">
							<div class="work_item">
								<div class="row">
									<div
										class="col-md-7 col-sm-12 col-xs-12 text-right pull-right sm-text-center">
										<div class="work_item_img">
											<img src="${images}travel/beanang.jpg" alt="" />
										</div>
									</div>
									<div
										class="col-md-5 col-sm-12 col-xs-12 text-right pull-left sm-text-center">
										<div class="work_item_details m-top-80 sm-m-top-20">
											<h4>독립문 크다</h4>
											<div class="work_separator1"></div>
											<p class="m-top-40 sm-m-top-10">2018-01-06 | Traveler Jk
												Lim</p>
										</div>
										<div class="feature_btns m-top-30">
											<a href="" class="btn btn-default text-uppercase">여행기 보기
												<i class="fa fa-long-arrow-right"></i>
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- End off work-item -->

						<div class="col-md-7 col-sm-12 col-xs-12">
							<div class="work_item">
								<div class="row">
									<div class="col-md-7 col-sm-12 col-xs-12">
										<div class="work_item_img sm-text-center sm-m-top-40">
											<img src="${images}travel/BestTravel3.jpg" alt="" />
										</div>
									</div>
									<div
										class="col-md-5 col-sm-12 col-xs-12 text-left pull-left sm-text-center">
										<div class="work_item_details m-top-80 sm-m-top-20">
											<h4>교촌한옥마을</h4>
											<div class="work_separator2"></div>
											<p class="m-top-40 sm-m-top-10">2018-01-06 | Traveler 몽이</p>
										</div>
										<div class="feature_btns m-top-30">
											<a href="" class="btn btn-default text-uppercase"><i
												class="fa fa-long-arrow-left"></i> 여행기 보기 </a>
										</div>
									</div>
								</div>

							</div>
						</div>
						<!-- End off work-item -->

						<div class="col-md-7 col-md-offset-5 col-sm-12 col-xs-12">
							<div class="work_item">
								<div class="row">
									<div
										class="col-md-7 col-sm-12 col-xs-12 text-right pull-right sm-text-center">
										<div class="work_item_img sm-m-top-40">
											<img src="${images}travel/BestTravel4.jpg" alt="" />
										</div>
									</div>
									<div
										class="col-md-5 col-sm-12 col-xs-12 text-right pull-left sm-text-center">
										<div class="work_item_details m-top-80 sm-m-top-20">
											<h4>I Love Paris Every Moment</h4>
											<div class="work_separator1"></div>
											<p class="m-top-40 sm-m-top-10">2018년 01월 07일 | Traveler
												스칼렛</p>
										</div>
										<div class="feature_btns m-top-30">
											<a href="" class="btn btn-default text-uppercase">여행기 보기
												<i class="fa fa-long-arrow-right"></i>
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- End off work-item -->

						<div class="col-md-7 col-sm-12 col-xs-12">
							<div class="work_item">
								<div class="row">
									<div class="col-md-7 col-sm-12 col-xs-12">
										<div class="work_item_img sm-text-center sm-m-top-40">
											<img src="${images}travel/BestTravel5.jpg" alt="" />
										</div>
									</div>
									<div
										class="col-md-5 col-sm-12 col-xs-12 text-left pull-left sm-text-center">
										<div class="work_item_details m-top-80 sm-m-top-20">
											<h4>부산 해운대 여행</h4>
											<div class="work_separator2"></div>
											<p class="m-top-40 sm-m-top-10">2017년 12월 29일 | Traveler
												정우기</p>
										</div>
										<div class="feature_btns m-top-30">
											<a href="" class="btn btn-default text-uppercase"><i
												class="fa fa-long-arrow-left"></i> 여행기 보기 </a>
										</div>
									</div>
								</div>

							</div>
						</div>
						<!-- End off work-item -->

					</div>
				</div>
			</div>

			<hr />
			

			<div class="container">
				<div class="row">
					<div  class="head_title text-left sm-text-center wow fadeInDown">
						<h2><span>곽호선</span>님의 추천리스트 만들기</h2>
						<h5>
							<em>Some our recent works is here. Discover them now!</em>
						</h5>
						<div class="separator_left"></div>
					</div>

					<div class="service_content_area">
						<!-- Service LEFT SIDE -->
						<div class="col-md-4 service_left wow fadeInLeft">
							<!-- Service -->

							<div class="service_items">
								<div class="row">

									<!-- ICON -->
									<div class="col-xs-3">
										<div class="hexagon">
											<div class="about-content">
												<span class="fa fa-leaf"></span>
											</div>
										</div>
									</div>

									<div class="col-xs-9">
										<div class="text-left service_left_text">
											<h4 class="main-color">Perfect Responsive</h4>
											<p>Duis autem vel eum iriure dolor in hendrerit in
												vulputate velit esse molestie</p>
										</div>
									</div>

								</div>
							</div>
							<!-- end Single Service item -->

							<!-- Service -->
							<div class="service_items">
								<div class="row">
									<!-- ICON -->
									<div class="col-xs-3">
										<div class="hexagon">
											<div class="about-content">
												<span class="fa fa-diamond"></span>
											</div>
										</div>
									</div>

									<div class="col-xs-9">
										<div class="text-left service_left_text">
											<h4 class="main-color">Unique Design</h4>
											<p>Duis autem vel eum iriure dolor in hendrerit in
												vulputate velit esse molestie</p>
										</div>
									</div>

								</div>
							</div>
							<!-- end Single Service item -->

							<!-- Service -->
							<div class="service_items">
								<div class="row">
									<!-- ICON -->
									<div class="col-xs-3">
										<div class="hexagon">
											<div class="about-content">
												<span class="fa fa-android"></span>
											</div>
										</div>
									</div>

									<div class="col-xs-9">
										<div class="text-left service_left_text">
											<h4 class="main-color">Clean & Clear</h4>
											<p>Duis autem vel eum iriure dolor in hendrerit in
												vulputate velit esse molestie</p>
										</div>
									</div>
								</div>
							</div>
							<!-- end Single Service item -->


						</div>
						<!-- /END Service LEFT -->

						<!-- PHONE IMAGE -->
						<div class="col-md-4 sm-m-top-40 sm-text-center">
							<div class="service-img wow bounceIn">
								<img src="${images}service-img.png" alt="Architect Img">
							</div>
						</div>

						<!-- Service RIGHT -->
						<div class="col-md-4 service_right wow fadeInRight sm-m-top-40">

							<!-- Service -->
							<div class="service_items">
								<div class="row">

									<div class="col-xs-9">
										<div class="service_right_text p-l-15 text-right">
											<h4 class="main-color">Easy install</h4>
											<p>Duis autem vel eum iriure dolor in hendrerit in
												vulputate velit esse molestie</p>
										</div>
									</div>

									<!-- ICON -->
									<div class="col-xs-3">
										<div class="hexagon">
											<div class="about-content">
												<span class="fa fa-cut"></span>
											</div>
										</div>
									</div>

								</div>

							</div>
							<!-- end Single Service item -->



							<!-- Service -->
							<div class="service_items">
								<div class="row">

									<div class="col-xs-9">
										<div class="service_right_text p-l-15 text-right">
											<h4 class="main-color">Premium Support</h4>
											<p>Duis autem vel eum iriure dolor in hendrerit in
												vulputate velit esse molestie</p>
										</div>
									</div>


									<!-- ICON -->
									<div class="col-xs-3">
										<div class="hexagon">
											<div class="about-content">
												<span class="fa fa-bullhorn"></span>
											</div>
										</div>
									</div>

								</div>

							</div>
							<!-- end Single Service item -->

							<!-- Service -->
							<div class="service_items">
								<div class="row">


									<div class="col-xs-9">
										<div class="service_right_text p-l-15 text-right">
											<h4 class="main-color">And much more</h4>
											<p>Duis autem vel eum iriure dolor in hendrerit in
												vulputate velit esse molestie</p>
										</div>
									</div>

									<!-- ICON -->
									<div class="col-xs-3">
										<div class="hexagon">
											<div class="about-content">
												<span class="fa fa-paper-plane"></span>
											</div>
										</div>
									</div>

								</div>
							</div>
							<!-- end Single Service item -->


						</div>
						<!-- /END Service RIGHT -->
					</div>
				</div>
				<!--End off row -->
			</div>

		</section>
		<!--End off About section -->
		<hr>
		<!--Testimonial Section-->
		<section id="testimonial" class="testimonial fix roomy-100">
			<div class="container">
				<div class="row">
					<div class="main_testimonial text-center">
						<h2><span>사용자</span> 추천</h2>
						<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
							<Br>
							<div class="carousel-inner" role="listbox">
								<div class="item active testimonial_item">
									<div class="col-sm-10 col-sm-offset-1">

										<div class="test_authour">
											<img class="img-circle" src="${images}user/user1.jpg" alt="" width="100px" height="100px"/>
											<h5 class="m-top-20">임순묵</h5>
										</div>

										<div class="row">
											<div class="main_counter text-center">
												<div class="col-md-4">
													<div class="counter_item">
														<h5 class="statistic-counter">
															<em> 128 </em>
														</h5>
														<div class="separator_small"></div>
														<h5>추천수</h5>
													</div>
												</div>
												<div class="col-md-4">
													<div class="counter_item sm-m-top-40">
														<h5 class="statistic-counter">
															<em>124</em>
														</h5>
														<div class="separator_small"></div>
														<h5>이야기</h5>
													</div>
												</div>
												<div class="col-md-4">
													<div class="counter_item sm-m-top-40">
														<h5 class="statistic-counter">
															<em>76</em>
														</h5>
														<div class="separator_small"></div>
														<h5>좋아요</h5>
													</div>
												</div>
											</div>
										</div>
										<!--End off row-->
									</div>
								</div>
								<div class="item testimonial_item">
									<div class="col-sm-10 col-sm-offset-1">

										<div class="test_authour">
											<img class="img-circle" src="${images}user/user2.jpg" alt="" width="100px" height="100px"/>
											<h5 class="m-top-20">곽호선</h5>
										</div>

										<div class="row">
											<div class="main_counter text-center">
												<div class="col-md-4">
													<div class="counter_item">
														<h5 class="statistic-counter">
															<em> 180 </em>
														</h5>
														<div class="separator_small"></div>
														<h5>추천수</h5>
													</div>
												</div>
												<div class="col-md-4">
													<div class="counter_item sm-m-top-40">
														<h5 class="statistic-counter">
															<em>154</em>
														</h5>
														<div class="separator_small"></div>
														<h5>이야기</h5>
													</div>
												</div>
												<div class="col-md-4">
													<div class="counter_item sm-m-top-40">
														<h5 class="statistic-counter">
															<em>100</em>
														</h5>
														<div class="separator_small"></div>
														<h5>좋아요</h5>
													</div>
												</div>
											</div>
										</div>
										<!--End off row-->


									</div>
								</div>
								<div class="item testimonial_item">
									<div class="col-sm-10 col-sm-offset-1">

										<div class="test_authour">
											<img class="img-circle" src="${images}user/user3.jpg" alt="" width="100px" height="100px"/>
											<h5 class="m-top-20">조홍희</h5>
										</div>

										<div class="row">
											<div class="main_counter text-center">
												<div class="col-md-4">
													<div class="counter_item">
														<h5 class="statistic-counter">
															<em> 250 </em>
														</h5>
														<div class="separator_small"></div>
														<h5>추천수</h5>
													</div>
												</div>
												<div class="col-md-4">
													<div class="counter_item sm-m-top-40">
														<h5 class="statistic-counter">
															<em>200</em>
														</h5>
														<div class="separator_small"></div>
														<h5>이야기</h5>
													</div>
												</div>
												<div class="col-md-4">
													<div class="counter_item sm-m-top-40">
														<h5 class="statistic-counter">
															<em>150</em>
														</h5>
														<div class="separator_small"></div>
														<h5>좋아요</h5>
													</div>
												</div>
											</div>
										</div>
										<!--End off row-->

									</div>
								</div>

							</div>

							<!-- Controls -->
							<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev"> 
								<span class="fa fa-long-arrow-left" aria-hidden="true"></span> 
								<span class="sr-only">Previous</span>
							</a> 
							<span class="slash">/</span> 
							<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
								<span class="fa fa-long-arrow-right" aria-hidden="true"></span>
								<span class="sr-only">Next</span>
							</a>

						</div>
					</div>
				</div>
				<!--End off row-->
			</div>
			<!--End off container -->

			<br />
			<hr />
			

			<div class="container">
				<div class="row">
					<div class="main_cbrand text-center">
						<div class="col-md-2 col-sm-4 col-xs-6">
							<div class="cbrand_item m-bottom-10">
								<a href=""><img src="${images}brand-img1.png" alt="" /></a>
							</div>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<div class="cbrand_item m-bottom-10">
								<a href=""><img src="${images}brand-img2.png" alt="" /></a>
							</div>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<div class="cbrand_item m-bottom-10">
								<a href=""><img class="" src="${images}brand-img3.png"
									alt="" /></a>
							</div>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<div class="cbrand_item m-bottom-10">
								<a href=""><img src="${images}brand-img4.png" alt="" /></a>
							</div>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<div class="cbrand_item m-bottom-10">
								<a href=""><img src="${images}brand-img5.png" alt="" /></a>
							</div>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<div class="cbrand_item m-bottom-10">
								<a href=""><img src="${images}brand-img1.png" alt="" /></a>
							</div>
						</div>
					</div>
				</div>
				<!-- End off row -->
			</div>
			<!-- End off container -->
		</section>
		<!--End off Testimonial section -->

		<!--Gallery Section-->
		<section id="gallery" class="gallery margin-top-120 bg-grey">
			<!-- Gallery container-->
			<div class="container">
				<div class="row">
					<div class="main-gallery roomy-80">
						<div class="col-md-12">
							<div  class="head_title text-left sm-text-center wow fadeInDown">
								<h2><span>여행</span> 갤러리</h2>
								<h5>
									<em>Some our recent works is here. Discover them now!</em>
								</h5>
								<div class="separator_left"></div>
							</div>
						</div>
						<div class="col-md-12 m-bottom-60">
							<div class="filters-button-group text-right sm-text-center">
								<button class="button is-checked" data-filter="*">ALL</button>
								<button class="button" data-filter=".metal">힐링</button>
								<button class="button" data-filter=".transition">레저</button>
								<button class="button" data-filter=".alkali">맛집</button>
								<button class="button" data-filter=".ar">추천</button>
							</div>
						</div>

						<div style="clear: both;"></div>

						<div class="grid text-center">
							<div class="grid-item transition metal ium"
								style="width: 370px; height: 409px;">
								<img alt="" src="${images}travel/BestTravel.jpg">
								<div class="grid_hover_area text-center">
									<div class="grid_hover_text m-top-110">
										<h4 class="text-blue">동행's gallery</h4>
										<h5 class="text-blue">
											<em>go whith..</em>
										</h5>
										<a href="${images}travel/BestTravel.jpg"
											class="popup-img text-blue m-top-40">View 
											<i class="fa fa-long-arrow-right"></i>
										</a>
									</div>
								</div>
								<!-- End off grid Hover area -->
							</div>
							<!-- End off grid item -->

							<div class="grid-item metalloid "
								style="width: 370px; height: 582px;">
								<img alt="" src="${images}travel/BestTravel2.jpg">
								<div class="grid_hover_area text-center">
									<div class="grid_hover_text m-top-150">
										<h4 class="text-blue">동행's gallery</h4>
										<h5 class="text-blue">
											<em>go whith..</em>
										</h5>
										<a href="${images}travel/BestTravel2.jpg"
											class="popup-img text-blue m-top-40">View 
											<i class="fa fa-long-arrow-right"></i>
										</a>
									</div>
								</div>
								<!-- End off grid Hover area -->
							</div>
							<!-- End off grid item -->

							<div class="grid-item post-transition metal numberGreaterThan50"
								style="width: 370px; height: 249px;">
								<img alt="" src="${images}travel/BestTravel3.jpg">
								<div class="grid_hover_area text-center">
									<div class="grid_hover_text m-top-50">
										<h4 class="text-blue">동행's gallery</h4>
										<h5 class="text-blue">
											<em>go whith..</em>
										</h5>
										<a href="${images}travel/BestTravel3.jpg"
											class="popup-img text-blue m-top-40">View <i
											class="fa fa-long-arrow-right"></i></a>
									</div>
								</div>
								<!-- End off grid Hover area -->
							</div>
							<!-- End off grid item -->

							<div class="grid-item alkali ar"
								style="width: 370px; height: 533px;">
								<img alt="" src="${images}travel/BestTravel4.jpg">
								<div class="grid_hover_area text-center">
									<div class="grid_hover_text m-top-50">
										<h4 class="text-blue">동행's gallery</h4>
										<h5 class="text-blue">
											<em>go whith..</em>
										</h5>
										<a href="${images}travel/BestTravel4.jpg"
											class="popup-img text-blue m-top-40">View <i
											class="fa fa-long-arrow-right"></i></a>
									</div>
								</div>
								<!-- End off grid Hover area -->
							</div>
							<!-- End off grid item -->

							<div class="grid-item post-transition metal ium"
								style="width: 370px; height: 380px;">
								<img alt="" src="${images}travel/BestTravel5.jpg">
								<div class="grid_hover_area text-center">
									<div class="grid_hover_text m-top-150">
										<h4 class="text-blue">동행's gallery</h4>
										<h5 class="text-blue">
											<em>go whith..</em>
										</h5>
										<a href="${images}travel/BestTravel5.jpg"
											class="popup-img text-blue m-top-50">View <i
											class="fa fa-long-arrow-right"></i></a>
									</div>
								</div>
								<!-- End off grid Hover area -->
							</div>
							<!-- End off grid item -->


							<div class="grid-item metal ar"
								style="width: 370px; height: 361px;">
								<img alt="" src="${images}travel/Travel1.jpg">
								<div class="grid_hover_area text-center">
									<div class="grid_hover_text m-top-110">
										<h4 class="text-blue">동행's gallery</h4>
										<h5 class="text-blue">
											<em>go whith..</em>
										</h5>
										<a href="${images}travel/Travel1.jpg"
											class="popup-img text-blue m-top-40">View 
											<i class="fa fa-long-arrow-right"></i>
										</a>
									</div>
								</div>
								<!-- End off grid Hover area -->
							</div>
							<!-- End off grid item -->

						</div>

						<div style="clear: both;"></div>

					</div>
				</div>
			</div>
			<!-- Portfolio container end -->
		</section>
		<!-- End off portfolio section -->	

		
		
		<!--Models section-->
		<section id="models" class="models bg-grey roomy-80">
			<div class="container">
				<div class="row">
					<div class="main_models text-center">
						<div class="col-md-12">
							<div class="head_title text-left sm-text-center wow fadeInDown">
								<h2>이달의 <span>축제</span></h2>
								<h5>
									<em>FESTIVAL</em>
								</h5>
								<div class="separator_left"></div>
							</div>
						</div>

						<div class="col-md-3 col-sm-6">
							<div class="model_item m-top-30">
								<div class="model_img">
									<img src="${images}festival/festival1.jpg" alt="" width="270px"
										height="270px" />
									<div class="model_caption">
										<h5 class="text-blue">홍천강 인삼송어 축제 2018</h5>
									</div>
								</div>
							</div>
						</div>
						<!-- End off col-md-3 -->

						<div class="col-md-3 col-sm-6">
							<div class="model_item m-top-30">
								<div class="model_img">
									<img src="${images}festival/festival2.jpg" alt="" width="270px"
										height="270px" />
									<div class="model_caption">
										<h5 class="text-blue">화천산천어축제 2018</h5>
									</div>
								</div>
							</div>
						</div>
						<!-- End off col-md-3 -->

						<div class="col-md-3 col-sm-6">
							<div class="model_item m-top-30">
								<div class="model_img">
									<img src="${images}festival/festival3.jpg" alt="" width="270px"
										height="270px" />
									<div class="model_caption">
										<h5 class="text-blue">파주 송어 축제 2018</h5>
									</div>
								</div>
							</div>
						</div>
						<!-- End off col-md-3 -->

						<div class="col-md-3 col-sm-6">
							<div class="model_item m-top-30">
								<div class="model_img">
									<img src="${images}festival/festival4.jpg" alt="" width="270px"
										height="270px" />
									<div class="model_caption">
										<h5 class="text-blue">강화도 빙어 송어 축제 2018</h5>
									</div>
								</div>
							</div>
						</div>
						<!-- End off col-md-3 -->

						<div class="col-md-3 col-sm-6">
							<div class="model_item m-top-30">
								<div class="model_img">
									<img src="${images}festival/festival5.jpg" alt="" width="270px"
										height="270px" />
									<div class="model_caption">
										<h5 class="text-blue">인제빙어축제 2018</h5>
									</div>
								</div>
							</div>
						</div>
						<!-- End off col-md-3 -->

						<div class="col-md-3 col-sm-6">
							<div class="model_item m-top-30">
								<div class="model_img">
									<img src="${images}festival/festival6.jpg" alt="" width="270px"
										height="270px" />
									<div class="model_caption">
										<h5 class="text-blue">합천 황매산철쭉제 2017</h5>
									</div>
								</div>
							</div>
						</div>
						<!-- End off col-md-3 -->

						<div class="col-md-3 col-sm-6">
							<div class="model_item m-top-30">
								<div class="model_img">
									<img src="${images}festival/festival7.jpg" alt="" width="270px"
										height="270px" />
									<div class="model_caption">
										<h5 class="text-blue">고양국제꽃박람회 2017</h5>
									</div>
								</div>
							</div>
						</div>
						<!-- End off col-md-3 -->

						<div class="col-md-3 col-sm-6">
							<div class="model_item meet_team m-top-30">
								<a href="">모두 보기<i class="fa fa-long-arrow-right"></i></a>
							</div>
						</div>
						<!-- End off col-md-3 -->

					</div>
				</div>
			</div>
		</section>

		<!--Company section-->

		<section id="company" class="company bg-light">
			<div class="container">
				<div class="row">
					<div class="main_company roomy-100 text-center">
						<h3 class="text-uppercase">동 행</h3>
						<p>가산 다지털 단지 - 한국 소프트웨어 인재 개발원</p>
						<p>010 - 1234 - 5678<br>
						info@poiseidon.lnk</p>
					</div>
				</div>
			</div>
		</section>


		<!-- scroll up-->
		<div class="scrollup">
			<a href="#"><i class="fa fa-chevron-up"></i></a>
		</div>
		<!-- End off scroll up -->


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


	</div>

	<!-- JS includes -->

	<script src="${js}vendor/jquery-1.11.2.min.js"></script>
	<script src="${js}vendor/bootstrap.min.js"></script>

	<script src="${js}isotope.min.js"></script>
	<script src="${js}jquery.magnific-popup.js"></script>
	<script src="${js}jquery.easing.1.3.js"></script>
	<script src="${js}slick.min.js"></script>
	<script src="${js}jquery.collapse.js"></script>
	<script src="${js}bootsnav.js"></script>

	<script src="${js}plugins.js"></script>
	<script src="${js}main.js"></script>
	
	
	<script src="${js}bootstrap.green.min.js"></script>
	
	<script type="text/javascript">
	var checkFirst = false;
	var lastKeyword="";
	var loopSendKeyword = false;
	
	function checkId() {
		if(checkFirst == false) {
			setTimeOut("sendId();", 500);
			loopSendKeyword = true;
		}
		checkFirst = true;
	}
	
	function checkPwd() {
		var f1 = document.registerForm[0];
		var pwd1 = fl.inputPassword1.value;
		var pwd2 = f1.inputPassword2.value;
		
		if(pwd1 != pwd2) {
			document.getElementById('chkPwdMsg').innerHTML="동일한 비밀 번호를 입력해주세요";
		} else {
			document.getElementById('chkPwdMsg').innerHTML ="비밀번호가 확인 되었습니다"
		}
	}
	
	function sendId() {
		if(loopSendKeyword == false)
			return;
		
		var keyword = document.registerForm.inputId.value;
		if(keyword==""){
			lastKeyWord="";
			document.getElementById('chkIdMsg').innerHTML="아이디를 입력해주세요";
		}else if(keyword != lasyKeyWord) {
			lastKeyWord = keyword;
			
			if(keyword !="") {
				var params= encodeURIComponent(keyword);
				sendRequest("confirmId", params, displayResult, 'POST');

			} else {
				
			}
		}
		sendTimeout("sendId();", 500);
	}
	
	function displayResult() {
		if(httpRequest.readyState == 4) {
			if(httpRequest.status == 200) {
				var resultTest = httpRequest.responseText;
				var listView = document.getElementBy('chkIdMsg');
				
				if(resultText == 0) {
					listView.innerHTML="사용할 수 있는 아이디 입니다";
				} else {
					listView.innerHTML="사용할 수 없는 아이디 입니다";
				}
			} else {
				result.innerHTML = "에러발생";
			}
		}
	}

	</script>

	
</body>
</html>