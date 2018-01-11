$(function() {
		
		$(".reservation_manager").css("display","none");
		$(".siteuse_manager").css("display","none");
		
		$("#airplane_click").click(function(){
			$(".reservation_manager").css("display","block");
			$(".homepage_manager").css("display","none");
			$(".siteuse_manager").css("display","none");
			
			var content = "<h4>항공 예약 관리 </h4>" +
						  "<ul class='nav nav-pills nav-stacked'>" +
						  "<li class='active'><a href='#section1'>항공 예약현황</a></li>" +
						  "<li><a href='#section2'>예약취소</a></li>" +
				 		  "<li><a href='#section3'>메뉴3</a></li>" +
						  "<li><a href='#section3'>메뉴4</a></li>" +
						  "</ul><br>";
      
			$(".reservation_manager_content").html(content);
			
		})
		
		$("#stay_click").click(function(){
			$(".reservation_manager").css("display","block");
			$(".homepage_manager").css("display","none");
			$(".siteuse_manager").css("display","none");
			
			var content = "<h4>숙박 예약 관리 </h4>" +
						  "<ul class='nav nav-pills nav-stacked'>" +
			  			  "<li class='active'><a href='#section1'>숙박 예약 현황</a></li>" +
			  			  "<li><a href='#section2'>예약취소</a></li>" +
				 		  "<li><a href='#section3'>메뉴3</a></li>" +
			  			  "<li><a href='#section3'>메뉴4</a></li>" +
			  			  "</ul><br>";

			$(".reservation_manager_content").html(content);
		})
		
		$("#car_click").click(function(){
			$(".reservation_manager").css("display","block");
			$(".homepage_manager").css("display","none");
			$(".siteuse_manager").css("display","none");
			
			var content = "<h4>렌트카 예약 관리 </h4>" +
						  "<ul class='nav nav-pills nav-stacked'>" +
						  "<li class='active'><a href='#section1'>렌트카 예약 현황</a></li>" +
						  "<li><a href='#section2'>예약취소</a></li>" +
				 		  "<li><a href='#section3'>메뉴3</a></li>" +
						  "<li><a href='#section3'>메뉴4</a></li>" +
						  "</ul><br>";

			$(".reservation_manager_content").html(content);
		})
		
		$("#homeManage_click").click(function(){
			$(".homepage_manager").css("display","block");
			$(".reservation_manager").css("display","none");
			$(".siteuse_manager").css("display","none");
		})
		
		$("#siteManage_click").click(function(){
			$(".siteuse_manager").css("display","block");
			$(".reservation_manager").css("display","none");
			$(".homepage_manager").css("display","none");
		})
		
		
})