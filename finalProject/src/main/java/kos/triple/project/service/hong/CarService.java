package kos.triple.project.service.hong;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartHttpServletRequest;

public interface CarService {
	
	//��Ʈī �߰�
	public void rentAdd(MultipartHttpServletRequest req, Model model);
	
	//��Ʈī ��ȸ
	public void rentCar(HttpServletRequest req, Model model);
	
	//��Ʈī ����
	public void rentDelete(HttpServletRequest req, Model model);

}
