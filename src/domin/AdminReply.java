package domin;

public class AdminReply {
    private int arid;
    private String adminname;
    private String admessage;
    private String location;
    private int mbid;

    public AdminReply(int arid, String adminname, String admessage, String location, int mbid) {
        this.arid = arid;
        this.adminname = adminname;
        this.admessage = admessage;
        this.location = location;
        this.mbid = mbid;
    }

    public AdminReply() {
    }

    public int getArid() {
        return arid;
    }

    public void setArid(int arid) {
        this.arid = arid;
    }

    public String getAdminname() {
        return adminname;
    }

    public void setAdminname(String adminname) {
        this.adminname = adminname;
    }

    public String getAdmessage() {
        return admessage;
    }

    public void setAdmessage(String admessage) {
        this.admessage = admessage;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public int getMbid() {
        return mbid;
    }

    public void setMbid(int mbid) {
        this.mbid = mbid;
    }

    @Override
    public String toString() {
        return "AdminReply{" +
                "arid=" + arid +
                ", adminname='" + adminname + '\'' +
                ", admessage='" + admessage + '\'' +
                ", location='" + location + '\'' +
                ", mbid=" + mbid +
                '}';
    }
}
