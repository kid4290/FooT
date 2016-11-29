package work.com.byebye.dto;

import java.io.Serializable;

import org.springframework.web.multipart.MultipartFile;

public class BoardDto implements Serializable {
	   private String docNum;
	   private String userid; 
	   private Double lat;
	   private Double lon; 
	   private String movFile;
	   private String docTle;
	   private String docCon;
	   private String docDate;
	   private int docHit;
	   private String docTf;
	   private String docTag;
	   private String picFile;
//	   private MultipartFile bfile12;
	   private String place;
	   
	   
	   
	   public BoardDto(String docNum, String userid,Double lat,Double lon,String picFile,String movFile,String docTle,String docCon,String docDate,int docHit,String docTf,String docTag,String place) {
	      this.docNum = docNum;
	      this.userid = userid;
	      this.lat = lat;
	      this.lon = lon; 
	      this.movFile =  movFile;
	      this.docTle = docTle; 
	      this.docCon = docCon;
	      this.docDate = docDate; 
	      this.docHit = docHit; 
	      this.docTf = docTf;
	      this.docTag = docTag;
	      this.picFile = picFile;
	      this.place = place;
	      
	      
	   }
	   
	   public BoardDto(String userid,String docNum,String docTag,String docCon,String docTle,String picFile,String place) {
	      this.userid = userid;
	      this.docNum = docNum;
	      this.docTag = docTag;
	      this.docCon = docCon;
	      this.docTle = docTle;
	      this.picFile = picFile;
	      this.place = place;
	   }
	   
	   
	   public String getPlace() {
	      return place;
	   }



	   public void setPlace(String place) {
	      this.place = place;
	   }



	   public BoardDto(String docCon, String docNum, String docTag,String place) {
	      this.docNum = docNum;
	      this.docCon = docCon;
	      this.docTag = docTag;
	      this.place = place;
	   }
	   
	   public BoardDto() {}

	   public BoardDto(String userid) {
	      this.userid=userid;
	   }

	   public String getPicFile() {
	      return picFile;
	   }


	   public void setPicFile(String picFile) {
	      this.picFile = picFile;
	   }


	   public String getUserid() {
	      return userid;
	   }
	   public void setUserid(String userid) {
	      this.userid = userid;
	   }
	   public Double getLat() {
	      return lat;
	   }
	   public void setLat(Double lat) {
	      this.lat = lat;
	   }
	   public Double getLon() {
	      return lon;
	   }
	   public void setLon(Double lon) {
	      this.lon = lon;
	   }
	   public String getMovFile() {
	      return movFile;
	   }
	   public void setMovFile(String movFile) {
	      this.movFile = movFile;
	   }
	   public String getDocTle() {
	      return docTle;
	   }
	   public void setDocTle(String docTle) {
	      this.docTle = docTle;
	   }
	   public String getDocCon() {
	      return docCon;
	   }
	   public void setDocCon(String docCon) {
	      this.docCon = docCon;
	   }
	   public String getDocDate() {
	      return docDate;
	   }
	   public void setDocDate(String docDate) {
	      this.docDate = docDate;
	   }
	   public int getDocHit() {
	      return docHit;
	   }
	   public void setDocHit(int docHit) {
	      this.docHit = docHit;
	   }
	   public String getDocTf() {
	      return docTf;
	   }
	   public void setDocTf(String docTf) {
	      this.docTf = docTf;
	   }
	   public String getDocTag() {
	      return docTag;
	   }
	   public void setDocTag(String docTag) {
	      this.docTag = docTag;
	   }
	   
	   public String getDocNum() {
	      return docNum;
	   }
	   public void setDocNum(String docNum) {
	      this.docNum = docNum;
	   }

	   
	   @Override
	   public String toString() {
	      return "Upload [docNum=" + docNum + ", userid=" + userid + ", lat=" + lat + ", lon=" + lon + ", movFile="
	            + movFile + ", docTle=" + docTle + ", docCon=" + docCon + ", docDate=" + docDate + ", docHit=" + docHit
	            + ", docTf=" + docTf + ", docTag=" + docTag + ", picFile=" + picFile + "]";
	   }

	   @Override
	   public int hashCode() {
//	      final int prime = 31;
	      int result = 1;
	      return result;
	   }
	   @Override
	   public boolean equals(Object obj) {
	      if (this == obj)
	         return true;
	      if (obj == null)
	         return false;
	      if (getClass() != obj.getClass())
	         return false;
	      BoardDto other = (BoardDto) obj;
	      if (docNum != other.docNum)
	         return false;
	      return true;
	   }
	   
	   
	   
	   
	   
	}