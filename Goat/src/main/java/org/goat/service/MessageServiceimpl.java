package org.goat.service;

import java.util.ArrayList;

import org.goat.mapper.MessageMapper;
import org.goat.model.CriteriaVO;
import org.goat.model.MessageVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MessageServiceimpl implements MessageService{
	@Autowired
	MessageMapper mm;
	
	// 메세지 보내기 구현
	public int send(MessageVO mvo) {	
		return mm.send(mvo);
	}

	// 받은 메세지 리스트를 위한 구현
	public ArrayList<MessageVO> recieveMsg(String recv_id, int pageNum, int amount){
		return mm.recieveMsg(recv_id, pageNum, amount);
	}
	
	// 보낸 메세지 리스트를 위한 구현
	public ArrayList<MessageVO> sendMsg(String send_id){
		return mm.sendMsg(send_id);
	}
	
	// 새로운 메세지 리스트를 위한 구현
	public ArrayList<MessageVO> newMsg(String recv_id, int pageNum, int amount){
		return mm.newMsg(recv_id, pageNum, amount);
	}
	
	// 받은 메세지 삭제를 위한 구현
	public int recvRemove(MessageVO mvo) {
		return mm.recvRemove(mvo);
	}

	// 보낸 메세지 삭제를 위한 구현
	public int sendRemove(MessageVO mvo) {
		return mm.sendRemove(mvo);
	}
	
	// 새로운 메세지 확인을 위한 구현
	public int chkNewMsg(MessageVO mvo) {
		return mm.chkNewMsg(mvo);
	}

	// 새로온 메세지 전체건수 구현
	public int newMsgTotal(CriteriaVO cri) {
		return mm.newMsgTotal(cri);
	}
	
	// 받은 메세지 전체건수 설계
	public int recieveMsgTotal(CriteriaVO cri) {
		return mm.recieveMsgTotal(cri);
	}
}
