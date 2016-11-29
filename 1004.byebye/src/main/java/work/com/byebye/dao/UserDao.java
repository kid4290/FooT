package work.com.byebye.dao;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class UserDao {
   private FactoryDAODataSource factory;

   @Autowired
   private SqlSessionTemplate sqlSession;

   @Autowired
   public void setFactory(FactoryDAODataSource factory) {
      this.factory = factory;
   }

   private static UserDao instance = new UserDao();

   public static UserDao getInstance() {
      return instance;
   }

   /** 기본 생성자 */
   private UserDao() {}

   /** 로그인 시 아이디 중복 체크 */
   public String loginCheck(String userid) {
      return sqlSession.selectOne("loginCheck", userid);
   }
   
   /** 카카오 회원 등록 */
   public int insertKakao(String userid, String nickname, String userimg, String grade) {
      HashMap<String, String> map = new HashMap<String, String>();
      map.put("userid", userid);
      map.put("nickname", nickname);
      map.put("userimg", userimg);
      map.put("grade", grade);
      return sqlSession.insert("insertKakao", map);
   }
   
   /** 네이버 회원 등록 */
   public int insertNaver(String userid, String nickname, String userimg, String grade) {
      HashMap<String, String> map = new HashMap<String, String>();
      map.put("userid", userid);
      map.put("nickname", nickname);
      map.put("userimg", userimg);
      map.put("grade", grade);
      return sqlSession.insert("insertNaver", map);
   }
   
   /** 페이스북 회원 등록 */
   public int insertFacebook(String userid, String nickname, String userimg, String grade) {
      HashMap<String, String> map = new HashMap<String, String>();
      map.put("userid", userid);
      map.put("nickname", nickname);
      map.put("userimg", userimg);
      map.put("grade", grade);
      return sqlSession.insert("insertFacebook", map);
   }
}