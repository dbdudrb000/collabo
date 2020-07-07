package collabo.wato.springboot.web.homepage;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import collabo.wato.springboot.web.psy.service.PsyService;
import collabo.wato.springboot.web.psy.service.PsyServiceImpl;
import collabo.wato.springboot.web.psy.vo.PsyVO;


//@RestController
@Controller
public class HomepageController {

	private static final Logger logger = LoggerFactory.getLogger(HomepageController.class);
	
//	@Resource
	@Autowired
	PsyService psyService;
	
	@GetMapping("/")
	public String main(HttpServletResponse response) throws Exception {
		return "main/main";
	}
	
	
//	@RequestMapping(value = "/main", method = RequestMethod.GET)
	@GetMapping("/main")
	public String mainList(Locale locale, Model model/* , @ModelAttribute User userVO */) throws Exception {
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);
		model.addAttribute("serverTime", formattedDate );
		
		return "main/main";
	}
	
	@GetMapping("/test")
	public String test(Model model) throws Exception {
		PsyVO vo = new PsyVO();
		List<PsyVO> voList = psyService.select(vo);
		
		model.addAttribute("voList", voList );
		
		return "main/mainView";
	}
}
