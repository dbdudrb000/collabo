package collabo.wato.springboot.web.hotPlace.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import collabo.wato.springboot.web.hotPlace.vo.PostVO;

@Repository
@Mapper
public interface PostMapper {

	List<PostVO> getPostList();

	String getPost(PostVO vo);

	void insertPost(PostVO vo);

}
