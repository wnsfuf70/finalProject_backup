package kos.triple.project.persistence.hong;

import java.util.ArrayList;
import java.util.Map;

import kos.triple.project.vo.RentCarVO;

public interface CarDAO {
	
	//��Ʈī�߰�
	public int rentAdd(RentCarVO vo);
	
	//��Ʈī ��ȸ
	public ArrayList<RentCarVO> rentCar(String car_kind);
	
	//��������	
	public int rentDelete(String car_num);

}
