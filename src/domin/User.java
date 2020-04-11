package domin;

public class User {
    private int uid;
    private String email;
    private String upassword;
    private String username;
    private String birthday;
    private  String sex;
    private String telephone;

    public User(int uid, String email, String upassword, String username, String birthday, String sex, String telephone) {
        this.uid = uid;
        this.email = email;
        this.upassword = upassword;
        this.username = username;
        this.birthday = birthday;
        this.sex = sex;
        this.telephone = telephone;
    }

    public User() {
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUpassword() {
        return upassword;
    }

    public void setUpassword(String upassword) {
        this.upassword = upassword;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    @Override
    public String toString() {
        return "User{" +
                "uid=" + uid +
                ", email='" + email + '\'' +
                ", upassword='" + upassword + '\'' +
                ", username='" + username + '\'' +
                ", birthday='" + birthday + '\'' +
                ", sex='" + sex + '\'' +
                ", telephone='" + telephone + '\'' +
                '}';
    }
}
