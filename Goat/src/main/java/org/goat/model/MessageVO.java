package org.goat.model;

public class MessageVO {

	// 메세지 번호(mno)
	private int mno;
	// 메세지 보낸 id(send_id)
	private String send_id;
	// 메세지 받는 id(recv_id)
	private String recv_id;
	// 메세지 보내는 시간(send_time)
	private String send_time;
	// 메세지 내용(mcontent)
	private String mcontent;
	// 보낸메세지함 chk(send_chk)
	private boolean send_chk;
	// 받은메세지함 chk(recv_chk)
	private boolean recv_chk;
	// 새메세지함(new_msg)
	private boolean new_msg;
	// 메세지 받는 사람 nick(recv_nick)
	private String recv_nick;
	
	public int getMno() {
		return mno;
	}
	public void setMno(int mno) {
		this.mno = mno;
	}
	public String getSend_id() {
		return send_id;
	}
	public void setSend_id(String send_id) {
		this.send_id = send_id;
	}
	public String getRecv_id() {
		return recv_id;
	}
	public void setRecv_id(String recv_id) {
		this.recv_id = recv_id;
	}
	public String getSend_time() {
		return send_time;
	}
	public void setSend_time(String send_time) {
		this.send_time = send_time;
	}
	public String getMcontent() {
		return mcontent;
	}
	public void setMcontent(String mcontent) {
		this.mcontent = mcontent;
	}
	public boolean isSend_chk() {
		return send_chk;
	}
	public void setSend_chk(boolean send_chk) {
		this.send_chk = send_chk;
	}
	public boolean isRecv_chk() {
		return recv_chk;
	}
	public void setRecv_chk(boolean recv_chk) {
		this.recv_chk = recv_chk;
	}
	public boolean isNew_msg() {
		return new_msg;
	}
	public void setNew_msg(boolean new_msg) {
		this.new_msg = new_msg;
	}
	public String getRecv_nick() {
		return recv_nick;
	}
	public void setRecv_nick(String recv_nick) {
		this.recv_nick = recv_nick;
	}
	
	@Override
	public String toString() {
		return "MessageVO [mno=" + mno + ", send_id=" + send_id + ", recv_id=" + recv_id + ", send_time=" + send_time
				+ ", mcontent=" + mcontent + ", send_chk=" + send_chk + ", recv_chk=" + recv_chk + ", new_msg="
				+ new_msg + ", recv_nick=" + recv_nick + "]";
	}

}
