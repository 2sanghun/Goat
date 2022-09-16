package org.goat.controller;

import org.goat.model.LikeVO;
import org.goat.service.LikeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LikeController {
	@Autowired
	LikeService ls;
	
	// 좋아요 체크
	@RequestMapping(value = ("/like/checkLike/{bno}/{id}"), method=RequestMethod.GET)
	public ResponseEntity<Integer> checkLike(@PathVariable int bno, @PathVariable String id){
		System.out.println(bno);
		System.out.println(id);
		
		return new ResponseEntity<>(ls.checkLike(bno, id),HttpStatus.OK);
	}
	
	// 좋아요 등록
	@RequestMapping(value = "/like/likeUp", method=RequestMethod.POST)
	public ResponseEntity<String> likeUP(@RequestBody LikeVO like){
		System.out.println("성공 = "+like);
		// insert가 성공했으면 result변수에 1저장
		// insert가 실패했으면 resutl변수에 0저장
		int result = ls.likeUp(like);
		
		
		
		// result가 1이면 HttpStatus.OK
		// result가 0이면 HttpStatus.INTERNAL_SERVER_ERROR
		return result==1? new ResponseEntity<>("success", HttpStatus.OK)
						: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);

	}

	// 좋아요 취소
	@RequestMapping(value = "/like/likeDown", method=RequestMethod.DELETE)
	public ResponseEntity<String> likeDown(@RequestBody LikeVO like){
		System.out.println("취소 = "+like);
		// delete가 성공했으면 result변수에 1저장
		// delete가 실패했으면 result변수에 0저장
		int result = ls.likeDown(like);
		
		// result가 1이면 HttpStatus.OK
		// result가 0이면 HttpStatus.INTERNAL_SERVER_ERROR
		return result==1? new ResponseEntity<>("success",HttpStatus.OK)
						: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}

}
