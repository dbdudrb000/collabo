package collabo.wato.springboot.web.WeDaily;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONObject;
import org.json.simple.JSONValue;

import collabo.wato.springboot.web.WeDaily.vo.WeDailyVO;

public class WeDailyTest {
	
	public static StringBuilder sb;//
	  
    static String getString(String input, String data) // API에서 필요한 문자 자르기.
    {
        String[] dataSplit = data.split("{" + input + "}");
        String[] dataSplit2 = dataSplit[1].split("\"" + input + "\"");
        return dataSplit2[0];
    }

	
	
	public static void main(String[] args) {
		
	
    
    int display = 10;
    
    WeDailyVO vo = new WeDailyVO();

    List<WeDailyVO> rankArr = new ArrayList<WeDailyVO>();
   
    try {
        //String text = URLEncoder.encode(monetitle, "utf-8");
        String apiURL = "http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=bb67dec08a2eae9eec1bdcc1328fcbce&targetDt=20200628";
        URL url = new URL(apiURL);
        HttpURLConnection con = (HttpURLConnection) url.openConnection();
        con.setRequestMethod("GET");
       
        int responseCode = con.getResponseCode();
        BufferedReader br;
        if (responseCode == 200) {
            br = new BufferedReader(new InputStreamReader(con.getInputStream()));
        } else {
            br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
        }
        sb = new StringBuilder();
        String line;

        while ((line = br.readLine()) != null) {
            sb.append(line + "\n");
        }

        br.close();
        con.disconnect();
        //System.out.println(sb); 
        String data = sb.toString();
        String[] array;
        array = data.split("\"");
        String[] rank = new String[display];
        String[] movieNm = new String[display];
        String[] openDt = new String[display];
        
        String[] category = new String[display];
        String[] description = new String[display];
        String[] telephone = new String[display];
        String[] address = new String[display];
        String[] mapx = new String[display];
        String[] mapy = new String[display];
        String[] actor = new String[display];
        
        int k = 0;
        for (int i = 0; i < array.length; i++) {
            if (array[i].equals("rank"))
            	rank[k] = array[i + 2];            
            if (array[i].equals("movieNm"))
            	movieNm[k] = array[i + 2 ];         
            if (array[i].equals("openDt")) {
            	openDt[k] = array[i + 2];     
            	k++;
            }
        }
        
        System.out.println("movieNm >> " + movieNm[2]);
        System.out.println("sb >> " + sb);
       
      
    } catch (Exception e) {
        System.out.println(e);
    }
    
    

	}

	
	
	
}
