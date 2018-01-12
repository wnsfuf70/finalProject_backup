package kos.triple.project.controller.joon;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class AirReservationController {
	
	/*@Autowired
	AirReservationService service;*/
	
	@RequestMapping(value="airReservation")
	public String airReservation(HttpServletRequest req, Model model) {
		return "reservation/air/airReservationStart";
	}
	
	@RequestMapping(value="airPlaneSearch")
	public @ResponseBody String airPlaneSearch(HttpServletRequest req) {
		System.out.println("airPlaneSearch() ");
		
		return "123";
	}
	
	//항공예약목록
	@RequestMapping(value="airReservationList")
	public String airReservationList() {
		System.out.println("airReservationList()");
		return "main/adminMain/airPlane/airReservationList";
	}
	
	//항공예약목록
	@RequestMapping(value="airReservationCancelList")
	public String airReservationCancelList() {
		System.out.println("airReservationCancelList()");
		return "main/adminMain/airPlane/airReservationCancelList";
	}		
	
	//항공노선추가
	@RequestMapping(value="airRouteAdd")
	public String airRouteAdd() {
		System.out.println("airRouteAdd()");
		return "main/adminMain/airPlane/airRouteAdd";
	}		
	
	//항공운행정보수정
	@RequestMapping(value="airOperationChange")
	public String airOperationChange() {
		System.out.println("airOperationChange()");
		return "main/adminMain/airPlane/airOperationChange";
	}		
		
	
	
}
