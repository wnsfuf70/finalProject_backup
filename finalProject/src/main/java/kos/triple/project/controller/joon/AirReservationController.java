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
	
}
