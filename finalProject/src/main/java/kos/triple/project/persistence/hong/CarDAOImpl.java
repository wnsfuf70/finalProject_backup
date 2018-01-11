package kos.triple.project.persistence.hong;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kos.triple.project.vo.RentCarVO;

@Repository
public class CarDAOImpl implements CarDAO{
	
	@Autowired
	private SqlSession sqlSession;

	//·»Æ®Ä« Á¶È¸
	@Override
	public RentCarVO rentCar(String car_kind) {
		
		CarDAO dao = sqlSession.getMapper(CarDAO.class);
		RentCarVO vo = dao.rentCar(car_kind);
		
		return vo;
	}

}
