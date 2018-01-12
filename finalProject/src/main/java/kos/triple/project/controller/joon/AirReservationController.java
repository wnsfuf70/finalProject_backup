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
	
	//�װ�������
	@RequestMapping(value="airReservationList")
	public String airReservationList() {
		System.out.println("airReservationList()");
		return "main/adminMain/airPlane/airReservationList";
	}
	
	//�װ�������
	@RequestMapping(value="airReservationCancelList")
	public String airReservationCancelList() {
		System.out.println("airReservationCancelList()");
		return "main/adminMain/airPlane/airReservationCancelList";
	}		
	
	//�װ��뼱�߰�
	@RequestMapping(value="airRouteAdd")
	public String airRouteAdd() {
		System.out.println("airRouteAdd()");
		return "main/adminMain/airPlane/airRouteAdd";
	}		
	
	//�װ�������������
	@RequestMapping(value="airOperationChange")
	public String airOperationChange() {
		System.out.println("airOperationChange()");
		return "main/adminMain/airPlane/airOperationChange";
	}		
		
	
	
}
