package org.goat.service;

import java.util.ArrayList;

import org.goat.model.MessageVO;

public interface MessageService {

	// 메세지 보내기 설계
	public int send(MessageVO mvo);
	// 받은 메세지 리스트를 위한 설계
	public ArrayList<MessageVO> recieveMsg(String recv_id);
	// 보낸 메세지 리스트를 위한 설계
	public ArrayList<MessageVO> sendMsg(String send_id);
	// 새로온 메세지 리스트를 위한 설계
	public ArrayList<MessageVO> newMsg(String recv_id);
	// 받은 메세지 삭제를 위한 설계
	public int recvRemove(MessageVO mvo);
	// 보낸 메세지 삭제를 위한 설계
	public int sendRemove(MessageVO mvo);
	// 새로운 메세지 확인을 위한 설계
	public int chkNewMsg(MessageVO mvo);
	
}