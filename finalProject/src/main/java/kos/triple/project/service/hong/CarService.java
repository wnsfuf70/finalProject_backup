package kos.triple.project.service.hong;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartHttpServletRequest;

public interface CarService {
	
	//·»Æ®Ä« Ãß°¡
	public void rentAdd(MultipartHttpServletRequest req, Model model);
	
	//·»Æ®Ä« Á¶È¸
	public void rentCar(HttpServletRequest req, Model model);
	
	//·»Æ®Ä« »èÁ¦
	public void rentDelete(HttpServletRequest req, Model model);

}
