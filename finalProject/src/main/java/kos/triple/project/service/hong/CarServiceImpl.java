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

	//��Ʈī �߰�
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
	
	//��Ʈī ��ȸ
	@Override
	public void rentCar(HttpServletRequest req, Model model) {
		int pageSize = 5;  		//�� �������� ����� �� ����
		int pageBlock = 3; 		//�Ѻ��� ������ ����
		
		int cnt = 0; 	   		
		int start = 0;    	    //���� �������� �� ���� ��ȣ
		int end = 0;	   		//���� �������� �� ������ ��ȣ
		int number = 0;    		//����� �� ��ȣ
		String pageNum = null;  //������ ��ȣ
		int currentPage = 0; 	//���� ������
		
		int pageCount = 0; 		//������ ����
		int startPage = 0;	    //����������
		int endPage = 0; 		//������ ������
	
		pageNum = req.getParameter("pageNum");

		
		if(pageNum == null) {
			pageNum = "1"; //ù�������� 1�������� ����
		}		
		
		PageCalculator p = new PageCalculator(Integer.parseInt(pageNum), 30, 3, 5);
		
		// 1 = 25 - (5-1) * 5
		number = cnt - (currentPage - 1) * pageSize; //����� �� ��ȣ
				
		if(cnt > 0) {
			String car_kind = req.getParameter("car_kind");
			System.out.println("�ڵ��� ���� : ");
			ArrayList<RentCarVO> dtos = dao.rentCar(car_kind);
			model.addAttribute("dtos", dtos); //ū�ٱ��� : �Խñ۸�� cf)���� �ٱ��� : �Խñ� 1��
		}
		
		startPage = (currentPage / pageBlock) * pageBlock + 1; //(5/3) * 3 + 1 = 4
		if(currentPage % pageBlock == 0) startPage -= pageBlock; // (5%3) == 0 �̸� 
		
		endPage = startPage + pageBlock - 1; // 4 + 3 - 1 = 6
		if(endPage > pageCount) endPage = pageCount;
		
		model.addAttribute("number", number); //�۹�ȣ
		model.addAttribute("pageNum", pageNum); //������ ��ȣ
		
		if(cnt > 0) {
			model.addAttribute("startPage", p.getStartPage()); //����������
			model.addAttribute("endPage", p.getEndPage());//������������
			model.addAttribute("blockStartNumber", p.getBlockStartNumber());
			model.addAttribute("blockEndNumber", p.getBlockEndNumber());
			model.addAttribute("requestPage", p.getRequestPage());//���� ������
		}
		
	}
	
	//��������
	@Override
	public void rentDelete(HttpServletRequest req, Model model) {
		
		String car_num = req.getParameter("car_num");
		
		int cnt = dao.rentDelete(car_num);
		
		model.addAttribute("cnt", cnt);
		
	}


}
