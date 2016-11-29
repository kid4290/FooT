package com.work.spring15.dao;

import java.sql.Connection;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.work.spring15.dto.Member;
import com.work.spring15.dto.Upload;

@Repository
public class MemberDAO {
   /* spring di : setter injection */
   private FactoryDAODataSource factory;
   @Autowired
   public void setFactory(FactoryDAODataSource factory) {
      this.factory = factory;
   }
   
   private static MemberDAO instance = new MemberDAO();;
   
   public static MemberDAO getInstance() {
      return instance;
   }
   
   /**
    * 기본생성자 
    */
   private MemberDAO() {}

   /**
    * 로그인 인증
    * @param userid
    * @param userpw
    * @return
    */
   
   @Autowired
   private SqlSessionTemplate session;
   
   
   //업로드 부분 DAO
   public int upload(Upload dto) {
      System.out.println("dao test"+dto.getPicFile());
      Connection conn = null;
      PreparedStatement pstmt = null;
      String sql = "insert into upload values (upload_doc_num.nextval,?,?,?,?,?,?,?,?,?,?,?,?)";
      try {
         conn = factory.getConnection();
         pstmt = conn.prepareStatement(sql);
         
         pstmt.setString(1,dto.getUserid());
         pstmt.setInt(2, dto.getLat());
         pstmt.setInt(3, dto.getLon());
         pstmt.setString(4, dto.getPicFile());
         pstmt.setString(5, dto.getMovFile());
         pstmt.setString(6, dto.getDocTle());
         pstmt.setString(7, dto.getDocCon());
         pstmt.setString(8, dto.getDocDate());
         pstmt.setInt(9, dto.getDocHit());
         pstmt.setString(10, dto.getDocTf());
         pstmt.setString(11, dto.getDocTag());
         pstmt.setString(12, dto.getPlace());
         int temp = pstmt.executeUpdate();
         System.out.println("MemberDAO upload:"+temp);
         return temp;
      } catch(SQLException e) {
         System.out.println("Error : " + e.getMessage());
         e.printStackTrace();
      } 
      return 0;
   }
   
   ////
   Upload dpo = new Upload();
   ArrayList<Upload> list = new ArrayList<Upload>();
   HashMap<String,String> map = new HashMap<String,String>();
   //사진조회
   public List<Upload> myPlace(String userid) { 
      
      return session.selectList("myPlace",userid);
      
   }
      //사진 상세 조회
      public Upload myPlaceContent(String docNum) { 
         
         dpo = session.selectOne("myPlaceContent",docNum);
         System.out.println("Dao test myplaceContent: " + dpo);      
         return dpo;
      }
      
      //수정 : 내용파트 
      public int updateContent(Upload dpo) { 
         System.out.println("update Test : " +  dpo);   
      int upt = session.update("updateContent",dpo);
      
            
      return upt;
                     
      }
   
   
}