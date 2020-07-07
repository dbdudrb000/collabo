package collabo.wato.springboot.web.practice;

import javax.servlet.http.HttpServletResponse;

import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import ch.qos.logback.classic.Logger;

@Controller
public class PracticeController {

		private static Logger logger = (Logger) LoggerFactory.getLogger(PracticeController.class);
		
		@GetMapping("/practiceMain")
		public String main(HttpServletResponse response)throws Exception {
		
			return "main/test";
		}
}
