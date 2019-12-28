package bml.entity;

/**
 * User: 月影
 * Date: 2019/12/10 9:25
 */
public class Country {

    private short country_id;
    private String country;
    private String last_update;

    public short getCountry_id() {
        return country_id;
    }

    public void setCountry_id(short country_id) {
        this.country_id = country_id;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getLast_update() {
        return last_update;
    }

    public void setLast_update(String last_update) {
        this.last_update = last_update;
    }

    @Override
    public String toString() {
        return "Country{" +
                "country_id=" + country_id +
                ", country='" + country + '\'' +
                ", last_update='" + last_update + '\'' +
                '}';
    }
}
