package collabo.wato.springboot.web.divideskill;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import collabo.wato.springboot.web.divideskill.service.DivideService;
import collabo.wato.springboot.web.divideskill.vo.DivideVO;

@Controller
public class ContentsController {
	 
	@Autowired
	DivideService service;
	
	@RequestMapping("/divide/detail")
	public String main(HttpServletRequest request, HttpServletResponse response, DivideVO vo)throws Exception {
		String param = request.getParameter("param");
		
		vo.setCs_func_id(param);
		DivideVO contents = service.selectDivide(vo).get(0);
		
		request.setAttribute("vo", contents);
		
		List<DivideVO> editorList = service.selectDivideMirror(vo);
		DivideVO editor = new DivideVO();
		if( editorList != null && editorList.size() > 0 ) {
			editor = editorList.get(0);
			request.setAttribute("editor", editor);		
		}
		//조회수 처리
		service.getCookieDivide(request,vo);
		
		return "/main/divide_skill/divide_contents";
	}

	@RequestMapping("/divide/test")
	public String test(HttpServletRequest request, HttpServletResponse response) {
		
		String param = request.getParameter("param");
		
		return "/main/divide_skill/layout/divide_contents";
	}
	
	
}
