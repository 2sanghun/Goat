package org.goat.service;

import org.goat.model.BoardVO;

public interface DetailService {
// 글 상세 내용 보기 설계 
public BoardVO detail(BoardVO board);
// 글 수정 설계
public void modify(BoardVO board);
// 글 삭제 설계 
public void remove(BoardVO board);
}