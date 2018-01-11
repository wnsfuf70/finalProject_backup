package kos.triple.project.persistence.hong;

import kos.triple.project.vo.RentCarVO;

public interface CarDAO {
	
	public RentCarVO rentCar(String car_kind);

}
