package org.goat.controller;



import java.util.Locale;

import org.goat.model.sampleVO;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;




@Controller
public class SampleController {
	// 비동기식 동기식과는 달리 jsp가 없으므로 순수한 데이터(주로 많이 사용되는 형태는 문자열 , json,xml)를 반환합니다.
    // 기존 controller에서는 문자열을 반환하는 경우 jsp 파일의 이름으로 처리하지만
	// 비동기식 controller의 경우에는 순수한 데이터를 처리합니다.
	// 이때 메서드의 이턴타입이 ResponseEntity 객체이면 비동기식으로 처리함
	@RequestMapping(value = "/sample/getText",produces="text/plain; charset=UTF-8" ,method = RequestMethod.GET)
	public ResponseEntity<String>home(Locale locale,Model model) {
		// 순수한 데이터가 문자열("안녕하세요")
		return new ResponseEntity<>("Hello.",HttpStatus.OK);
	}
		//객체
		@RequestMapping(value = "/sample/getsample", method = RequestMethod.GET)
		public ResponseEntity<sampleVO>getsample(){
			
			sampleVO sample = new sampleVO();
			sample.setNo(1);
			sample.setName("정자바");
			sample.setGender("남");
			
			ResponseEntity<sampleVO> result=null;
			result=ResponseEntity.status(HttpStatus.OK).body(sample);
			
			return result;
		}
		
		@RequestMapping(value = "/sample/getsample1", method = RequestMethod.POST)
           public ResponseEntity<sampleVO>getsample1(@RequestBody sampleVO sample){
			
        	System.out.println("saplmevo data ....="+sample);
        	
        	ResponseEntity<sampleVO> result=null;
			result=ResponseEntity.status(HttpStatus.OK).body(sample);
        	
			return result;
		}
}
