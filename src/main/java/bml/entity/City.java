package bml.entity;

/**
 * User: 月影
 * Date: 2019/12/10 9:26
 */
public class City {
    private short city_id;
    private String city;
    private String last_update;
    private Country country;

    public short getCity_id() {
        return city_id;
    }

    public void setCity_id(short city_id) {
        this.city_id = city_id;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getLast_update() {
        return last_update;
    }

    public void setLast_update(String last_update) {
        this.last_update = last_update;
    }

    public Country getCountry() {
        return country;
    }

    public void setCountry(Country country) {
        this.country = country;
    }

    @Override
    public String toString() {
        return "City{" +
                "city_id=" + city_id +
                ", city='" + city + '\'' +
                ", last_update='" + last_update + '\'' +
                ", country=" + country +
                '}';
    }
}
