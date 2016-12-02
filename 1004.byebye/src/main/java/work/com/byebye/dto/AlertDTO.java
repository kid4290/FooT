//AlertDTO

package work.com.byebye.dto;

public class AlertDTO {
private String userid;
private String picFile;
private String alertDate;
private String docDate;
private double distance;
private int doc_num;

public int getDoc_num() {
	return doc_num;
}

public void setDoc_num(int doc_num) {
	this.doc_num = doc_num;
}

public AlertDTO(){}

public String getUserid() {
   return userid;
}

public void setUserid(String userid) {
   this.userid = userid;
}

public String getPicFile() {
   return picFile;
}

public void setPicFile(String picFile) {
   this.picFile = picFile;
}

public String getAlertDate() {
   return alertDate;
}

public void setAlertDate(String alertDate) {
   this.alertDate = alertDate;
}

public String getDocDate() {
   return docDate;
}

public void setDocDate(String docDate) {
   this.docDate = docDate;
}

public double getDistance() {
   return distance;
}

public void setDistance(double distance) {
   this.distance = distance;
}

@Override
public String toString() {
	StringBuilder builder = new StringBuilder();
	builder.append("AlertDTO [userid=");
	builder.append(userid);
	builder.append(", picFile=");
	builder.append(picFile);
	builder.append(", alertDate=");
	builder.append(alertDate);
	builder.append(", docDate=");
	builder.append(docDate);
	builder.append(", distance=");
	builder.append(distance);
	builder.append(", doc_num=");
	builder.append(doc_num);
	builder.append("]");
	return builder.toString();
}




}