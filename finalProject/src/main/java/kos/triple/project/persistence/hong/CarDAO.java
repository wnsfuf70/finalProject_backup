package kos.triple.project.persistence.hong;

import java.util.ArrayList;
import java.util.Map;

import kos.triple.project.vo.RentCarVO;

public interface CarDAO {
	
	//렌트카추가
	public int rentAdd(RentCarVO vo);
	
	//렌트카 조회
	public ArrayList<RentCarVO> rentCar(String car_kind);
	
	//차량삭제	
	public int rentDelete(String car_num);

}
