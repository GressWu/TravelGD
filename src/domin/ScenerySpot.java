package domin;

public class ScenerySpot {
    private int tourtime;
    private String destination;
    private String location;
    private String introduction;

    public ScenerySpot(int tourtime, String destination, String location, String introduction) {
        this.tourtime = tourtime;
        this.destination = destination;
        this.location = location;
        this.introduction = introduction;
    }

    public ScenerySpot() {
    }

    public int getTourtime() {
        return tourtime;
    }

    public void setTourtime(int tourtime) {
        this.tourtime = tourtime;
    }

    public String getDestination() {
        return destination;
    }

    public void setDestination(String destination) {
        this.destination = destination;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    @Override
    public String toString() {
        return "ScenerySpot{" +
                "tourtime=" + tourtime +
                ", destination='" + destination + '\'' +
                ", location='" + location + '\'' +
                ", introduction='" + introduction + '\'' +
                '}';
    }
}
