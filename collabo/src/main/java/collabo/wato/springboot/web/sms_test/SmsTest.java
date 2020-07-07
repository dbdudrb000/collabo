package collabo.wato.springboot.web.sms_test;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import collabo.wato.springboot.web.common.Coolsms;
import collabo.wato.springboot.web.common.Util;
import collabo.wato.springboot.web.common.vo.CommonVO;
import collabo.wato.springboot.web.member.service.MemberService;

@RestController
public class SmsTest {
    	
	@Autowired
	MemberService service;
	
		@RequestMapping("/smsStart")
    	public JSONObject smsstart(HttpServletRequest request, HttpServletResponse response, @RequestBody Map<String, Object> param)throws Exception {
			
			System.out.println("param = " +param.toString());
			System.out.println("param phone = " + param.get("phone"));
			 /*
		     * 서버에서 받은 API_KEY, API_SECRET를 입력해주세요.
		     */
		    String api_key = "NCSJXH582WUI0PQU";
		    String api_secret = "GVBPTBLCSRQYF6YIECJLCIG48AOC4GOS";
		    Coolsms Cool_sms2 = new Coolsms(api_key, api_secret);
		
		    /*
		     * Parameters
		     * 관련정보 : http://www.coolsms.co.kr/SDK_Java_API_Reference_ko#toc-0
		     */
		    
		    HashMap<String, String> set = new HashMap<String, String>();
		    set.put("to",(String) param.get("phone")); // 수신번호
			
		    // 인증번호를 만들기 위한 자바 에서제공하는 클래스
		    Util util = new Util();
		    util.setCertNumLength(6);
		    int rInt = Integer.parseInt(util.excuteGenerate());
		    
		    // 전화번호와 인증번호를 DB에 담는 service
		    service.upsertAuthCode((String) param.get("phone"), rInt);
		    
		    String msg = "[ TEST ]"+ "\n"+ "메세지 기능 테스트중입니다." + "\n" + "[ 인증번호:"+ rInt +" ]";
		    set.put("from", "01023128394"); // 발신번호 
		    set.put("text", msg); // 문자내용
		    set.put("type", "sms"); // 문자 타입
		
		    
		    JSONObject result = Cool_sms2.send(set); // 보내기&전송결과받기
		    System.out.println("result >> " + result); 
		    
		    if ((boolean)result.get("status") == true) {
		        // 메시지 보내기 성공 및 전송결과 출력
		        System.out.println("성공");            
		        System.out.println(result.get("group_id")); // 그룹아이디
		        System.out.println(result.get("result_code")); // 결과코드
		        System.out.println(result.get("result_message"));  // 결과 메시지
		        System.out.println(result.get("success_count")); // 메시지아이디
		        System.out.println(result.get("error_count"));  // 여러개 보낼시 오류난 메시지 수
		    } else {
		        // 메시지 보내기 실패
		        System.out.println("실패");
		        System.out.println(result.get("code")); // REST API 에러코드
		        System.out.println(result.get("message")); // 에러메시지
		    }
			return result;   
		}   

		
		@RequestMapping("/smsconfirm")
		public JSONObject smsconfirm(HttpServletRequest request, HttpServletResponse response, @RequestBody Map<String, Object> param) throws Exception{                     
			JSONObject result = new JSONObject();
			
			String phone = (String) param.get("phone_number");
			String confirm = (String) param.get("confirm");
			
			if(!confirm.isEmpty()) {
				CommonVO vo = new CommonVO();
				vo = service.selectAuthCode(phone);
				
				if(confirm.equals(vo.getAuth_key()+"")) {
					result.put("start", true);
					System.out.println("인증 되었습니다.");
				}else {
					result.put("start", false);
					System.out.println("인증 실패하였습니다..");
				}
			}else {
				System.out.println("confirm 이 없어요@@@@@@@@@@@@@");
			}
			return result;
		}
		


}
