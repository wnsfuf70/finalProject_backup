package kos.triple.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class adminMainController {

	//main������
		@RequestMapping(value="homeManage")
		public String homeManage() {
			System.out.println("homeManage()");
			return "main/adminMain/homeManage";
		}
		
		
		//������������
		@RequestMapping(value="siteManage")
		public String siteManage() {
			System.out.println("siteManage()");
			return "main/adminMain/siteManage";
		}
		
		
	
		
		
		
		
}
