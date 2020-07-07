package collabo.wato.springboot.web.psy.service;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import collabo.wato.springboot.web.psy.mapper.PsyMapper;
import collabo.wato.springboot.web.psy.vo.PsyVO;

@Service
public class PsyServiceImpl implements PsyService {

	/**=====================================================================================
	 * - �떖由� �뀒�뒪�듃 愿�由� ( �벑濡�,  �닔�젙,  �궘�젣,  議고쉶)
	 * ===================================================================================== */
	@Autowired
	PsyMapper psyDAO;
	
//	@Autowired
//	SqlSessionTemplate sqlSessionTemplate;
	
	/**
	 * �떖由� �뀒�뒪�듃
	 * - 議고쉶
	 * */ 
	@Override
	public List<PsyVO> select(PsyVO vo) throws Exception {
		return psyDAO.getPsyList(vo);
	}
	
//	@Override
//	public List<PsyVO> select(PsyVO vo) throws Exception {
//		return sqlSessionTemplate.selectList("getPsyList",vo);
//	}
	

}
