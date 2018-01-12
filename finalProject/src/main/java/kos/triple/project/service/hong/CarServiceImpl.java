package kos.triple.project.service.hong;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import kos.triple.project.etc.PageCalculator;
import kos.triple.project.persistence.hong.CarDAOImpl;
import kos.triple.project.vo.RentCarVO;

@Service
public class CarServiceImpl implements CarService{
	
	@Autowired
	CarDAOImpl dao;

	//렌트카 추가
	@Override
	public void rentAdd(MultipartHttpServletRequest req, Model model) {
		
		MultipartFile file = req.getFile("car_img");
		
		int maxSize = 10 * 1024 * 1024;
		
		String saveDir = req.getRealPath("/resources/images/car/");
		
		String realDir = "C:\\Dev\\TeamGit\\finalProject\\finalProject\\src\\main\\webapp\\resources\\images\\car\\";
		
		String encType = "UTF-8";
		
		try {
			file.transferTo(new File(saveDir+file.getOriginalFilename()));
            
            FileInputStream fis = new FileInputStream(saveDir + file.getOriginalFilename());
            FileOutputStream fos = new FileOutputStream(realDir + file.getOriginalFilename());
            
            int data = 0;
			
			while((data = fis.read()) != -1) {
				fos.write(data);
			}
			fis.close();
			fos.close();
				
			RentCarVO vo = new RentCarVO();
			
			String rent_no = req.getParameter("rent_no");
			String use_km = req.getParameter("use_km");
			String car_count = req.getParameter("car_count");
			String insurance = req.getParameter("insurance");
			String car_num = req.getParameter("car_num");
			String fileName = file.getOriginalFilename();
			
			vo.setRent_no(rent_no);
			vo.setUse_km(use_km);
			vo.setCar_count(Integer.parseInt(car_count));
			vo.setInsurance(insurance);
			vo.setCar_num(car_num);
			vo.setCar_img(fileName);
			
			int cnt = dao.rentAdd(vo);
			
			model.addAttribute("cnt", cnt);
				
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
	//렌트카 조회
	@Override
	public void rentCar(HttpServletRequest req, Model model) {
		int pageSize = 5;  		//한 페이지당 출력할 글 개수
		int pageBlock = 3; 		//한블럭당 페이지 개수
		
		int cnt = 0; 	   		
		int start = 0;    	    //현재 페이지의 글 시작 번호
		int end = 0;	   		//현재 페이지의 글 마지막 번호
		int number = 0;    		//출력할 글 번호
		String pageNum = null;  //페이지 번호
		int currentPage = 0; 	//현재 페이지
		
		int pageCount = 0; 		//페이지 개수
		int startPage = 0;	    //시작페이지
		int endPage = 0; 		//마지막 페이지
	
		pageNum = req.getParameter("pageNum");

		
		if(pageNum == null) {
			pageNum = "1"; //첫페이지를 1페이지로 설정
		}		
		
		PageCalculator p = new PageCalculator(Integer.parseInt(pageNum), 30, 3, 5);
		
		// 1 = 25 - (5-1) * 5
		number = cnt - (currentPage - 1) * pageSize; //출력할 글 번호
				
		if(cnt > 0) {
			String car_kind = req.getParameter("car_kind");
			System.out.println("자동차 종류 : ");
			ArrayList<RentCarVO> dtos = dao.rentCar(car_kind);
			model.addAttribute("dtos", dtos); //큰바구니 : 게시글목록 cf)작은 바구니 : 게시글 1건
		}
		
		startPage = (currentPage / pageBlock) * pageBlock + 1; //(5/3) * 3 + 1 = 4
		if(currentPage % pageBlock == 0) startPage -= pageBlock; // (5%3) == 0 이면 
		
		endPage = startPage + pageBlock - 1; // 4 + 3 - 1 = 6
		if(endPage > pageCount) endPage = pageCount;
		
		model.addAttribute("number", number); //글번호
		model.addAttribute("pageNum", pageNum); //페이지 번호
		
		if(cnt > 0) {
			model.addAttribute("startPage", p.getStartPage()); //시작페이지
			model.addAttribute("endPage", p.getEndPage());//마지막페이지
			model.addAttribute("blockStartNumber", p.getBlockStartNumber());
			model.addAttribute("blockEndNumber", p.getBlockEndNumber());
			model.addAttribute("requestPage", p.getRequestPage());//현재 페이지
		}
		
	}
	
	//차량삭제
	@Override
	public void rentDelete(HttpServletRequest req, Model model) {
		
		String car_num = req.getParameter("car_num");
		
		int cnt = dao.rentDelete(car_num);
		
		model.addAttribute("cnt", cnt);
		
	}


}
