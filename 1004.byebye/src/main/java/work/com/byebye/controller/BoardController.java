package work.com.byebye.controller;

import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import work.com.byebye.dto.BoardDto;
import work.com.byebye.exception.AuthenticationException;
import work.com.byebye.service.BoardService;

@Controller
public class BoardController {

	List<BoardDto> list = new ArrayList<BoardDto>();
	/** spring di : setter injection */
	private BoardService service;

	@Autowired
	public void setService(BoardService service) {
		this.service = service;
	}

	// /** 업로드 등록 요청 페이지 */
	// @RequestMapping("BoardDtoView.do")
	// public String BoardDtoView() {
	// return "BoardDto";
	// }

	@RequestMapping("fileBoardDtoFormView.do")
	public String BoardDtoView() {
		return "board/contact";
	}

	// 사진 업로드 부분 Controller
	private String BoardDtoPath = "c://temp//BoardDto";

	@RequestMapping(value = "multiInsert.do", method = RequestMethod.POST)
	public String BoardDtoByMultipart(@CookieValue(value="lon", defaultValue="0") Double lon , @CookieValue(value="lat", defaultValue="0") Double lat, MultipartHttpServletRequest request, Model model,
			HttpSession session) throws IOException, AuthenticationException {
		ModelAndView mv = new ModelAndView();
		MultipartFile multi = request.getFile("picFile");
		String date = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
		String docTf = request.getParameter("docTf");
		String docTle = request.getParameter("docTle");
		String docCon = request.getParameter("docCon");
		String docTag = request.getParameter("docTag");
		String place = request.getParameter("place");
		String userid = (String) session.getAttribute("userid");
		String picFile = userid + "_" + date + ".jpg";

		System.out.println("lat : " + lat);
		System.out.println("lon : " + lon);
		int result = service.insertBoard(userid, lat, lon, picFile, docTf, docTle, docCon, docTag, place);
		if (result == 1) {
			File file = new File(BoardDtoPath, picFile);
			multi.transferTo(file);
			return "redirect:myPlace.do";
		} else {
			mv.addObject("message", "로그인 정보를 다시 확인하시기 바랍니다.");
			return "error/errorLogin";
		}
	}

	/** 사진 리스트 조회요청 */
	@RequestMapping("myPlace.do")
	public @ResponseBody ModelAndView myPlace(HttpSession session) {
		String userid = (String) session.getAttribute("userid");

		list = service.myPlace(userid);

		ModelAndView mv = new ModelAndView();
		if (userid != null) {
			mv.addObject("list", list);
			mv.setViewName("board/myPlace");
		} else {
			mv.addObject("message", "로그인 정보를 다시 확인하시기 바랍니다.");
			mv.setViewName("error/errorLogin");
		}
		return mv;
	}

	@RequestMapping("imgLoad.do")
	public @ResponseBody void imgLoad(HttpServletRequest request, HttpServletResponse response) {
		String path = "c://temp//BoardDto/" + request.getParameter("fileName");
		System.out.println("imgLoad:" + path);
		try {
			BufferedInputStream in = new BufferedInputStream(new FileInputStream(path));
			ByteArrayOutputStream byteStream = new ByteArrayOutputStream(512);
			int imageByte;
			while ((imageByte = in.read()) != -1) {
				byteStream.write(imageByte);
			}
			in.close();
			response.setContentType("image/jpg");
			byteStream.writeTo(response.getOutputStream());
		} catch (IOException ioe) {
		}
	}

	/** 사진 상세조회 */
	@RequestMapping("myPlacePicContent.do")
	public ModelAndView myPlaceContent(HttpSession session, int seq) {
		BoardDto dto = new BoardDto();
		String userid = (String) session.getAttribute("userid");
		String docNum = String.valueOf(seq);

		dto = service.myPlaceContent(docNum);
		ModelAndView mv = new ModelAndView();
		if (userid != null) {
			mv.addObject("docNum", dto.getDocNum());
			mv.addObject("userid", dto.getUserid());
			mv.addObject("lat", dto.getLat());
			mv.addObject("lon", dto.getLon());
			mv.addObject("picFile", dto.getPicFile());
			mv.addObject("docTle", dto.getDocTle());
			mv.addObject("docCon", dto.getDocCon());
			mv.addObject("docDate", dto.getDocDate());
			mv.addObject("docHit", dto.getDocHit());
			mv.addObject("docTf", dto.getDocTf());
			mv.addObject("docTag", dto.getDocTag());
			mv.addObject("place", dto.getPlace());
			mv.setViewName("board/myPlaceContent");
		} else {
			mv.addObject("message", "로그인 정보를 다시 확인하시기 바랍니다.");
			mv.setViewName("error/errorLogin");
		}
		return mv;
	}

	// 사진 수정 뷰 이동
	@RequestMapping("updateContentView.do")
	public ModelAndView updateContentView(HttpSession session, int seq) {
		BoardDto dto = new BoardDto();
		String userid = (String) session.getAttribute("userid");
		String docNum = String.valueOf(seq);

		dto = service.myPlaceContent(docNum);
		ModelAndView mv = new ModelAndView();
		if (userid != null) {
			mv.addObject("docNum", dto.getDocNum());
			mv.addObject("userid", dto.getUserid());
			mv.addObject("lat", dto.getLat());
			mv.addObject("lon", dto.getLon());
			mv.addObject("picFile", dto.getPicFile());
			mv.addObject("docTle", dto.getDocTle());
			mv.addObject("docCon", dto.getDocCon());
			mv.addObject("docDate", dto.getDocDate());
			mv.addObject("docHit", dto.getDocHit());
			mv.addObject("docTf", dto.getDocTf());
			mv.addObject("docTag", dto.getDocTag());
			mv.addObject("place", dto.getPlace());
			mv.setViewName("board/myContentUpdate");
		} else {
			mv.addObject("message", "로그인 정보를 다시 확인하시기 바랍니다.");
			mv.setViewName("error/errorLogin");
		}
		return mv;
	}

	/**
	 * 수정 : 수정하려고하는 것만 선택해서 수정할 수 있음 수정 불가한거는 readOnly 명시
	 */
	@RequestMapping("updateContent.do")
	public ModelAndView updateContent(HttpSession session, HttpServletRequest request) {
		String docNum = (String) request.getParameter("seq");
		String docCon = (String) request.getParameter("docCon");
		String docTag = (String) request.getParameter("docTag");
		String place = (String) request.getParameter("place");

		int upt = service.updateContent(docCon, docNum, docTag, place);
		ModelAndView mv = new ModelAndView();
		if (upt > 0) {
			mv.setViewName("board/myPlaceContent");
		} else {
			mv.addObject("message", "로그인 정보를 다시 확인하시기 바랍니다.");
			mv.setViewName("error/errorLogin");
		}
		return mv;
	}

}
