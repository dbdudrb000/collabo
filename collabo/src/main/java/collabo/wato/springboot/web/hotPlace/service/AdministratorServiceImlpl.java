package collabo.wato.springboot.web.hotPlace.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import collabo.wato.springboot.web.hotPlace.mapper.AdministratorMapper;
import collabo.wato.springboot.web.hotPlace.vo.AdministratorVO;

@Service
public class AdministratorServiceImlpl implements AdministratorService {
	
	@Autowired
	AdministratorMapper administratorDao;

	@Override
	public List<AdministratorVO> selectAdministratorList() throws Exception {
		return administratorDao.getAdministratorList();
	}

}
