package kos.triple.project.controller.hong;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import kos.triple.project.service.hong.CarServiceImpl;

@Controller
public class RentController {
	
	@Autowired
	CarServiceImpl service;
	
	private Logger log = Logger.getLogger(this.getClass());
	
	//��Ʈī ���
	@RequestMapping(value="rentAdd")
	public String rentAdd(MultipartHttpServletRequest req, Model model) {
		
		log.debug("=============================== Method Name : rentAdd() ===============================");
		service.rentAdd(req, model);
		
		return "main/adminMain";
	}
	
	//��Ʈī ��ȸ ������
	@RequestMapping(value="rentReservation")
	public String rentReservation(HttpServletRequest req, Model model) {
		
		log.debug("=============================== Method Name : rent() ===============================");
		
		return "reservation/car/rent";
	}
	
	//��Ʈī��� ������
	@RequestMapping(value="carList")
	public String carList(HttpServletRequest req, Model model) {
		
		log.debug("=============================== Method Name : carList() ===============================");
		service.rentCar(req, model);
		
		return "reservation/car/carList";
	}
	
	//��Ʈī����
	@RequestMapping(value="rentDelete")
	public String rentDelete(HttpServletRequest req, Model model) {
		
		log.debug("=============================== Method Name : rentDelete() ===============================");
		
		
		return "reservation/car/rent";
	}
	
	

}
