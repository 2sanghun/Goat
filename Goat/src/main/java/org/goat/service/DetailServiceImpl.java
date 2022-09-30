package org.goat.service;
 
import java.util.ArrayList;
  
import org.goat.mapper.BoardAttachMapper;
import org.goat.mapper.DetailMapper;
import org.goat.model.AttachFileVO;
import org.goat.model.BoardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DetailServiceImpl implements DetailService {

   @Autowired
   DetailMapper dm;
   @Autowired
   BoardAttachMapper bam;   //attach 테이블 mapper
   
   public BoardVO detail(BoardVO board) {
      dm.cntup(board);
      
     return dm.detail(board);   
   }
    public int modify(BoardVO board) {
       
      int result=dm.modify(board);
       
      System.out.println(board.getBno());
      System.out.println(board.getAttach());
      
      if (board.getAttach() != null) {
         board.getAttach().forEach(attach -> {
            attach.setBno(board.getBno());
            bam.insert(attach);
            });
      }
      
      return result;
   }
   
    public void remove(BoardVO board) {
       dm.remove(board);
    }
    
    // 첨부파일 조회 구현
    // public ArrayList<AttachFileVO> attachlist(int bno){
       public AttachFileVO attachlist(int bno){
    	System.out.println("service attachlist==="+bno);
       return bam.attachlist(bno);
    }
   
   public void attachremove(AttachFileVO attach) {
      
      bam.attachremove(attach);
   }
    
    
}