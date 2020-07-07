package collabo.wato.springboot.web.hotPlace.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import collabo.wato.springboot.web.hotPlace.vo.AdministratorVO;

@Repository
@Mapper
public interface AdministratorMapper {
	List<AdministratorVO> getAdministratorList();

	String getAdministrator(AdministratorVO vo);

	void insertAdministrator(AdministratorVO vo);
}
