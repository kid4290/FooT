package work.com.byebye.controller;

import java.io.UnsupportedEncodingException;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import work.com.byebye.dto.UserDto;
import work.com.byebye.service.UserService;

@Controller
public class UserController {

   @Resource
   private UserService userservice;

   @Autowired
   public void setService(UserService userservice) {
      this.userservice = userservice;
   }

   @RequestMapping(value="login.do")
   public String login() {
      return "login";
   }

   /** 네이버 로그인 시 아이디 중복 체크 후 로그인 및 회원등록 
    * @throws UnsupportedEncodingException */
   @RequestMapping(value="naverLogin.do")
   public String naverLogin(String userid, String nickname, String userimg, HttpSession session) throws UnsupportedEncodingException {
      String grade = userservice.loginCheck(userid);

      ModelAndView mv = new ModelAndView();
      if(grade == null) {
         nickname = new String(nickname.getBytes("8859_1"), "UTF-8");
         int result = userservice.insertKakao(userid, nickname, userimg, "naver");

         if(result > 0) {
            session.setAttribute("userid", userid);
            mv.addObject("nickname",nickname);

            mv.setViewName("index");
         } else {
            mv.addObject("message", "로그인 오류");
            mv.setViewName("error");
         }
      } else {
         session.setAttribute("userid", userid);
         mv.addObject("nickname",nickname);

         mv.setViewName("index");
      }
      return "index";
   }

   /** 카카오 로그인 시 아이디 중복 체크 후 로그인 및 회원등록
    * @throws UnsupportedEncodingException */
   @RequestMapping(value="kakaoLogin.do")
   public String kakaoLogin(String userid, String nickname, String userimg, HttpSession session) throws UnsupportedEncodingException {
      String grade = userservice.loginCheck(userid);
      ModelAndView mv = new ModelAndView();
      if(grade == null) {
         nickname = new String(nickname.getBytes("8859_1"), "UTF-8");
         int result = userservice.insertKakao(userid, nickname, userimg, "kakao");
         if(result > 0) {
            session.setAttribute("userid", userid);
            mv.addObject("nickname",nickname);
            mv.setViewName("index");
         } else {
            mv.addObject("message", "로그인 오류");
            mv.setViewName("error");
         }
      } else {
         session.setAttribute("userid", userid);
         mv.addObject("nickname",nickname);
         mv.setViewName("index");
      }
      return "index";
   }

   /** facebook login */
   @RequestMapping(value="facebookLogin.do")
   public String facebookLogin(String userid, String nickname, String userimg, HttpSession session) {
      String grade = userservice.loginCheck(userid);
      ModelAndView mv = new ModelAndView();
      if(grade == null) {
         int result = userservice.insertKakao(userid, nickname, userimg, "facebook");
         if(result > 0) {
            session.setAttribute("userid", userid);
            mv.addObject("nickname",nickname);
            mv.setViewName("index");
         } else {
            mv.addObject("message", "로그인 오류");
            mv.setViewName("error");
         }
      } else {
         session.setAttribute("userid", userid);
         mv.addObject("nickname",nickname);
         mv.setViewName("index");
      }
      return "redirect:index.do";
   }
   
   /** setting(내정보 보기) 페이지 */
   @RequestMapping(value="setting.do")
   public ModelAndView getUser(HttpSession session) {
	   String userid = (String) session.getAttribute("userid");
	   
	   ModelAndView mv = new ModelAndView();
	   UserDto dto = userservice.getUser(userid);
	   System.out.println("dto : " + dto);
	   if(dto != null) {
		   mv.addObject("dto", dto);
		   mv.setViewName("setting");
	   } else {
		   mv.addObject("message", "내정보 조회 오류");
           mv.setViewName("index");
	   }
	   return mv;
	   
   }
   
   /** 로그아웃 요청 */
	@RequestMapping("logout.do")
	public String logout(HttpSession session) {
		if (session.getAttribute("userid") != null) {
			session.removeAttribute("userid");
		}
		session.invalidate();
		return "login";
	}
	
	/** 회원 탈퇴 */
	@RequestMapping("deleteUser.do")
	public String delete(HttpSession session) {
		String userid = (String) session.getAttribute("userid");
		int result = userservice.deleteUser(userid);
		if(result > 0) {
			if (session.getAttribute("userid") != null) {
				session.removeAttribute("userid");
			}
			session.invalidate();
		} else {
			return "setting";
		}
		return "login";
	}
   
   
   
   
}