package org.goat.controller;

import java.util.ArrayList;
 
import javax.servlet.http.HttpServletRequest;
 
import org.goat.model.AttachFileVO;
import org.goat.model.BoardVO;
import org.goat.model.ReplePageVO;
import org.goat.model.RepleVO;
import org.goat.service.DetailService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
 

@Controller
public class DetailController {
   
   @Autowired
   DetailService ds;
   
  @RequestMapping(value = "/detail/detail", method = RequestMethod.GET)
   public String detail(BoardVO board, Model model) {
      model.addAttribute("detail", ds.detail(board));
      return "detail/detail";
   }
   //@RequestMapping(value = "/detail/modify", method = RequestMethod.POST)
   @RequestMapping(value = "/detail/modify", method = RequestMethod.PUT)
   //public String modify(BoardVO board, RedirectAttributes rttr) {
   public ResponseEntity <String> modify(@RequestBody BoardVO board) {
	   
	   System.out.println("contoroleer===>"+board); 
	   
	   int result = ds.modify(board);
      
	   return result==1? new ResponseEntity<> ("success", HttpStatus.OK)
		               : new ResponseEntity<> (HttpStatus.INTERNAL_SERVER_ERROR);
	   
	   
   }
   
//   @RequestMapping(value = "/detail/remove", method = RequestMethod.POST)
   @RequestMapping(value = "/detail/remove", method = RequestMethod.GET)
   public String remove(BoardVO board) {
      ds.remove(board);
      return "redirect:/list/list";
   }
   
   // 해당게시물의 첨부파일의 데이터를 ajax로 전송
   @RequestMapping(value = "/attachlist", method = RequestMethod.GET)
   public ResponseEntity<AttachFileVO> attachlist(int bno){
	   System.out.println("bno=========>"+bno);
	   System.out.println("attachlist=========>"+ds.attachlist(bno));
      
	   return new ResponseEntity<>(ds.attachlist(bno), HttpStatus.OK);
   }
   
   
   @RequestMapping(value = "/attach/remove", method = RequestMethod.DELETE)
   public void attachremove (@RequestBody AttachFileVO attach){

      ds.attachremove(attach);
   
   }
}