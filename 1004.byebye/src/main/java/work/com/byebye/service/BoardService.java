package work.com.byebye.service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import work.com.byebye.dao.BoardDao;
import work.com.byebye.dto.BoardDto;
import work.com.byebye.exception.AuthenticationException;;

@Service
public class BoardService {
	Date date = new Date();
	SimpleDateFormat dateformat = new SimpleDateFormat("yyyy/MM/dd");
	private BoardDao dao;

	@Autowired
	public void setDao(BoardDao dao) {
		this.dao = dao;
	}

	public BoardService() {
	}

	// 사진넣기
	public int insertBoard(String userid, Double lat, Double lon, String picFile, String docTf, String docTle, String docCon,
			String docTag, String place) throws AuthenticationException {
		String movFile = "notYet";
		int docHit = 0;
		String docDate = dateformat.format(date);

		BoardDto dto = new BoardDto(null, userid, lat, lon, picFile, movFile, docTle, docCon, docDate, docHit, docTf,
				docTag, place);
		int join = dao.insertBoard(dto);

		return join;
	}

	BoardDto dpo = new BoardDto();
	List<BoardDto> list = new ArrayList<BoardDto>();

	// 사진 조회
	public List<BoardDto> myPlace(String userid) {
		list = dao.myPlace(userid);
		return list;
	}

	// 사진 상세 조회
	public BoardDto myPlaceContent(String docNum) {
		dpo = dao.myPlaceContent(docNum);
		return dpo;
	}

	// 수정 서비스
	public int updateContent(String docCon, String docNum, String docTag, String place) {
		dpo = new BoardDto(docCon, docNum, docTag, place);
		int upt = dao.updateContent(dpo);
		return upt;
	}
}