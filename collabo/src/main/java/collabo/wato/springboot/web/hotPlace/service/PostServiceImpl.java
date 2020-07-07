package collabo.wato.springboot.web.hotPlace.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import collabo.wato.springboot.web.hotPlace.mapper.PostMapper;
import collabo.wato.springboot.web.hotPlace.vo.PostVO;

@Service
public class PostServiceImpl implements PostService {
	
	@Autowired
	PostMapper postDao;
	
	@Override
	public List<PostVO> selectPostList() throws Exception {
		return postDao.getPostList();
	}

}
