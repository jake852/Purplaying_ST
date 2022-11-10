package kr.co.purplaying.service;

import java.util.List;
import java.util.Map;

import kr.co.purplaying.domain.BoardDto;

public interface BoardService {
	
	List<BoardDto> getPage(Map map) throws Exception;
	int getCount() throws Exception;
	BoardDto read(int bno) throws Exception;
  int remove(Integer bno, String writer) throws Exception;
  int write(BoardDto boardDto) throws Exception;
  int modify(BoardDto boardDto) throws Exception;
}
