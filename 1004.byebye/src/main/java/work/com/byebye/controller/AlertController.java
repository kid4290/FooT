//AlertController

package work.com.byebye.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import work.com.byebye.dto.AlertDTO;
import work.com.byebye.service.AlertService;

@Controller
public class AlertController {
   
   private AlertService service;
   
   @Autowired
   public void setService(AlertService service){
      this.service = service;
   }

   @RequestMapping("alert.do")
   public ModelAndView alert(ModelAndView mv, @CookieValue(value="lon", defaultValue="0") String lon , @CookieValue(value="lat", defaultValue="0") String lat, HttpSession session){
      String userid = (String) session.getAttribute("userid");
      AlertDTO dto = service.alert(lat, lon, userid);
      mv.addObject("result", dto);
      System.out.println(dto);
      mv.setViewName("test");
      return mv;
   }
}