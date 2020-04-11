package domin;

public class MessagBox {
    private int mbid;
    private String username;
    private String message;
    private int uid;
    private String location;

    public MessagBox(int mbid, String username, String message, int uid, String location) {
        this.mbid = mbid;
        this.username = username;
        this.message = message;
        this.uid = uid;
        this.location = location;
    }

    public MessagBox() {
    }

    public int getMbid() {
        return mbid;
    }

    public void setMbid(int mbid) {
        this.mbid = mbid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    @Override
    public String toString() {
        return "MessagBox{" +
                "mbid=" + mbid +
                ", username='" + username + '\'' +
                ", message='" + message + '\'' +
                ", uid=" + uid +
                ", location='" + location + '\'' +
                '}';
    }
}
