//AlertDTO

package work.com.byebye.dto;

public class AlertDTO {
private String userid;
private String picFile;
private String alertDate;
private String docDate;
private double distance;

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
   builder.append("]");
   return builder.toString();
}


}