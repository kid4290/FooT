package work.com.byebye.service;



import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import work.com.byebye.dao.ReplyDao;
import work.com.byebye.dao.UserDao;
import work.com.byebye.dto.Reply;

@Service
public class ReplyService {
   private ReplyDao replydao;
   
   @Autowired
   public void setDao(ReplyDao replydao) {
      this.replydao = replydao;
   }
   
   List<Reply> reList = new ArrayList<Reply>();
   Reply dto = new Reply();
   
   public int replyInsert(String reCon,String docNum, String userId){
		System.out.println("test SER "  + reCon + docNum + userId);

	   int replyInsert =replydao.replyInsert(reCon,docNum,userId);
	   
	   return replyInsert;
   }
   
   /**
    * 
    * @param userid
    * 
    * 조회는 컨트롤러 부분을 제외한 나머지는 같이 사용가능 
    */
   public List<Reply> replySearch(String userid) {
	   
	   System.out.println("test re service " + userid);
	   
	   
	   reList = replydao.replySearch(userid);
	   
	   return reList;
	   
   }
   
   /**
    * 
    * 
    */
   
   public Reply replyContent(String reNum) {
	   System.out.println("test replyContents " + reNum);
	   
	   dto = replydao.replyContent(reNum);
	   
	   return dto;
   }
   
   public int replyUpdate(String reNum,String reCon) {
	   System.out.println("replyUpdate Test " + reCon);
	   
	   int replyUpdate = replydao.replyUpdate(reNum,reCon);
	   
	   return replyUpdate;
   }
   
}