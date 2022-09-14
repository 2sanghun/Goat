package org.goat.controller;

import org.goat.model.ReplePageVO;
import org.goat.model.RepleVO;

import org.goat.service.RepleService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class RepleController {

@Autowired
RepleService rs;

@RequestMapping(value = "/replies/write", method = RequestMethod.POST)   
public ResponseEntity <String> replywrite(@RequestBody RepleVO reple){

	// insert가 성공했으면 result 변수에 1 저장 
	// insert가 실패했으면 result 변수에 0 저장 
	int result =  rs.writeReple(reple);
	
	// result 가 1이면 HttpStatus.OK 
	// result가 0이면 HttpStatus.INTERNAL_SERVER_ERROR 
	return result==1? new ResponseEntity<> ("success", HttpStatus.OK)
			        : new ResponseEntity<> (HttpStatus.INTERNAL_SERVER_ERROR);
}

//댓글 목록 리스트 
@RequestMapping(value="/replies/list/{bno}/{pageNum}", method=RequestMethod.GET)
public ResponseEntity <ReplePageVO> getList(@PathVariable("bno") int bno, @PathVariable("pageNum") int pageNum){
	
	System.out.println(bno);
	System.out.println(pageNum);
	
	RepleVO reple = new RepleVO(pageNum,10);

	return new ResponseEntity<>(rs.list(reple,bno), HttpStatus.OK);
		
}

// 댓글 삭제 
@RequestMapping(value="/replies/remove", method=RequestMethod.DELETE)
public ResponseEntity <String> replyremove (@RequestBody RepleVO reple){
	
	System.out.println("삭제="+reple.getRno()); 
	
	// delete가 성공했으면 result 변수에 1 저장 
	// delete가 실패했으면 result 변수에 0 저장 
	int result = rs.remove(reple);	
			
	// result 가 1이면 HttpStatus.OK 
	// result가 0이면 HttpStatus.INTERNAL_SERVER_ERROR 
	return result==1? new ResponseEntity<> ("success", HttpStatus.OK)
	               : new ResponseEntity<> (HttpStatus.INTERNAL_SERVER_ERROR);
	}

// 댓글 수정 
@RequestMapping(value="/replies/modify", method=RequestMethod.PUT)
public ResponseEntity <String> replymodify (@RequestBody RepleVO reple){
	System.out.println(reple); 
 	
	// update가 성공했으면 result 변수에 1 저장 
	// update가 실패했으면 result 변수에 0 저장 
	int result = rs.modify(reple);	
			
	// result 가 1이면 HttpStatus.OK 
	// result가 0이면 HttpStatus.INTERNAL_SERVER_ERROR 
	return result==1? new ResponseEntity<> ("success", HttpStatus.OK)
	               : new ResponseEntity<> (HttpStatus.INTERNAL_SERVER_ERROR);
	}

}