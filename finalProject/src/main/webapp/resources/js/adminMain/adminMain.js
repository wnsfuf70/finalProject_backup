$(function() {
		
		$(".reservation_manager").css("display","none");
		$(".siteuse_manager").css("display","none");
		$("iframe").attr("src","homeManage");
		
		
		//항공예약관리 클릭
		$("#airplane_click").click(function(){
			$(".reservation_manager").css("display","block");
			$(".homepage_manager").css("display","none");
			$(".siteuse_manager").css("display","none");
			
			var content = "<h4>항공 예약 관리 </h4>" +
						  "<ul class='nav nav-pills nav-stacked'>" +
						  "<li><a href='airReservationList' target='contentFrame'>예약 리스트 보기</a></li>" +
						  "<li><a href='airReservationCancelList' target='contentFrame'>예약 취소 보기</a></li>" +
				 		  "<li><a href='airRouteAdd' target='contentFrame'>항공 노선 추가</a></li>" +
						  "<li><a href='airOperationChange' target='contentFrame'>항공 운행 정보 변경</a></li>" +
						  "</ul><br>";
      
			$(".reservation_manager_content").html(content);
			$("iframe").attr("src","airReservationList");
		})
		
		//숙박관리 클릭
		$("#stay_click").click(function(){
			$(".reservation_manager").css("display","block");
			$(".homepage_manager").css("display","none");
			$(".siteuse_manager").css("display","none");
			
			var content = "<h4>숙박 예약 관리 </h4>" +
						  "<ul class='nav nav-pills nav-stacked'>" +
			  			  "<li><a href='#section1'>숙박 예약 현황</a></li>" +
			  			  "<li><a href='#section2'>예약 취소</a></li>" +
				 		  "<li><a href='#section3'>메뉴3</a></li>" +
			  			  "<li><a href='#section3'>메뉴4</a></li>" +
			  			  "</ul><br>";

			$(".reservation_manager_content").html(content);
			$("iframe").attr("src","#section1");
		})
		
		//렌트카관리클릭
		$("#car_click").click(function(){
			$(".reservation_manager").css("display","block");
			$(".homepage_manager").css("display","none");
			$(".siteuse_manager").css("display","none");
			
			var content = "<h4>렌트카 예약 관리 </h4>" +
						  "<ul class='nav nav-pills nav-stacked'>" +
						  "<li><a href='rentReservationList' target='contentFrame'>렌트카 예약 리스트</a></li>" +
						  "<li><a href='rentReservationCancelList' target='contentFrame'>예약 취소</a></li>" +
				 		  "<li><a href='rentAdd' target='contentFrame'>차량 등록</a></li>" +
						  "<li><a href='rentDelete' target='contentFrame'>차량 삭제</a></li>" +
						  "</ul><br>";

			$(".reservation_manager_content").html(content);
			$("iframe").attr("src","rentReservationList");
		})
		
		
		//홈페이지 관리 클릭
		$("#homeManage_click").click(function(){
			$(".homepage_manager").css("display","block");
			$(".reservation_manager").css("display","none");
			$(".siteuse_manager").css("display","none");
			
			$("iframe").attr("src","homeManage");

			
		})
		
		//사이트이용관리 클릭
		$("#siteManage_click").click(function(){
			$(".siteuse_manager").css("display","block");
			$(".reservation_manager").css("display","none");
			$(".homepage_manager").css("display","none");
			
			$("iframe").attr("src","siteManage");

		})
		
		
	
		/* 항공 세부메뉴 링크 작업 */
		
})