package com.work.spring15.service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.work.spring15.dao.MemberDAO;
import com.work.spring15.dto.Member;
import com.work.spring15.dto.Upload;
import com.work.spring15.exception.AuthenticationException;

@Service
public class MemberService {
   Date date = new Date();
   SimpleDateFormat dateformat = new SimpleDateFormat("yyyy/MM/dd");
   Member dto = new Member();
   /* spring di : setter injection */
   private MemberDAO dao;

   @Autowired
   public void setDao(MemberDAO dao) {
      this.dao = dao;
   }

   public MemberService() {
   }

   // 사진넣기
   public int upload(String userId, String latString, String lonString, String picFile, String docTf, String docTle,
         String docCon, String docTag, String place) throws AuthenticationException {
      System.out.println("Service test " + picFile);
      String movFile = "notYet";
      int docHit = 0;
      String docDate = dateformat.format(date);

      int lat = Integer.parseInt(latString);
      int lon = Integer.parseInt(lonString);
      Upload dto = new Upload(userId, lat, lon, picFile, movFile, docTle, docCon, docDate, docHit, docTf, docTag,
            place);
      int join = dao.upload(dto);

      return join;
   }

   Upload dpo = new Upload();
   List<Upload> list = new ArrayList<Upload>();

   // 사진 조회
   public List<Upload> myPlace(String userid) {

      list = dao.myPlace(userid);
      System.out.println("service list test" + list);

      return list;
   }

   // 사진 상세 조회
   public Upload myPlaceContent(String docNum) {

      dpo = dao.myPlaceContent(docNum);
      System.out.println("service Test mypic : " + dpo);
      return dpo;
   }

   // 수정 서비스
   public int updateContent(String docCon, String docNum, String docTag, String place) {

      dpo = new Upload(docCon, docNum, docTag, place);
      int upt = dao.updateContent(dpo);

      return upt;
   }
}