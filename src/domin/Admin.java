package domin;

public class Admin {
    private int aid;
    private String adminname;
    private String apassword;

    public Admin(int aid, String adminname, String apassword) {
        this.aid = aid;
        this.adminname = adminname;
        this.apassword = apassword;
    }

    public Admin() {
    }

    public int getAid() {
        return aid;
    }

    public void setAid(int aid) {
        this.aid = aid;
    }

    public String getAdminname() {
        return adminname;
    }

    public void setAdminname(String adminname) {
        this.adminname = adminname;
    }

    public String getApassword() {
        return apassword;
    }

    public void setApassword(String apassword) {
        this.apassword = apassword;
    }

    @Override
    public String toString() {
        return "Admin{" +
                "aid=" + aid +
                ", adminname='" + adminname + '\'' +
                ", apassword='" + apassword + '\'' +
                '}';
    }
}
