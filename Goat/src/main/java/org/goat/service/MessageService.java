package org.goat.service;

import java.util.ArrayList;

import org.goat.model.MessageVO;

public interface MessageService {
	
	// 쪽지 리스트 설계
	public ArrayList<MessageVO> msgList(String user_id, int pageNum, int amount,String box);
	// 쪽지 total 설계
	public int getTotal(String user_id, String box);
	// 메세지 보내기 설계
	public int send(MessageVO mvo);
	// 받은 메세지 삭제를 위한 설계
	public int recvRemove(MessageVO mvo);
	// 보낸 메세지 삭제를 위한 설계
	public int sendRemove(MessageVO mvo);
	// 새로운 메세지 확인을 위한 설계
	public int chkNewMsg(MessageVO mvo);
	/*
	// 새로온 메세지 전체건수 설계
	public int newMsgTotal(CriteriaVO cri);
	// 받은 메세지 전체건수 설계
	public int recieveMsgTotal(CriteriaVO cri);
	// 보낸 쪽지 전체건수 설계
	public int sendMsgTotal(CriteriaVO cri);
	// 받은 메세지 리스트를 위한 설계
	public ArrayList<MessageVO> recieveMsg(String recv_id, int pageNum, int amount);
	// 보낸 메세지 리스트를 위한 설계
	public ArrayList<MessageVO> sendMsg(String send_id, int pageNum, int amount);
	// 새로온 메세지 리스트를 위한 설계
	public ArrayList<MessageVO> newMsg(String recv_id, int pageNum, int amount);
	*/
}
