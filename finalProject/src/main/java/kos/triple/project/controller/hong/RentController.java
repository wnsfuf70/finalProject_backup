package kos.triple.project.controller.hong;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kos.triple.project.service.hong.CarServiceImpl;

@Controller
public class RentController {
	
	@Autowired
	CarServiceImpl service;
	
	private Logger log = Logger.getLogger(this.getClass());
	
	//·»Æ®Ä« µî·Ï
	@RequestMapping(value="rentAdd")
	public String rentAdd(HttpServletRequest req, Model model) {
		
		log.debug("=============================== Method Name : rentAdd() ===============================");
		
		
		return "reservation/car/rentAdd";
	}
	
	//·»Æ®Ä«Á¶È¸
	@RequestMapping(value="rentReservation")
	public String rent(HttpServletRequest req, Model model) {
		
		log.debug("=============================== Method Name : rent() ===============================");
		
		
		return "reservation/car/rent";
	}
	
	

}
