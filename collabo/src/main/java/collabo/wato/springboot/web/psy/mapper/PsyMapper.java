package collabo.wato.springboot.web.psy.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import collabo.wato.springboot.web.psy.vo.PsyVO;

@Repository
@Mapper
public interface PsyMapper {
	List<PsyVO> getPsyList(PsyVO vo);
	String getPsy(PsyVO vo);
}
