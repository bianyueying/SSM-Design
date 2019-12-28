package bml.entity;

/**
 * User: 月影
 * Date: 2019/12/9 18:30
 */
public class Film {
    private short id;
    private String title;
    private String description;
    private String release_year;
    private short language_id;
    private short rental_duration;
    private float rental_rate;
    private short length;
    private String last_update;

    public short getId() {
        return id;
    }

    public void setId(short id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getRelease_year() {
        return release_year;
    }

    public void setRelease_year(String release_year) {
        this.release_year = release_year;
    }

    public short getLanguage_id() {
        return language_id;
    }

    public void setLanguage_id(short language_id) {
        this.language_id = language_id;
    }

    public short getRental_duration() {
        return rental_duration;
    }

    public void setRental_duration(short rental_duration) {
        this.rental_duration = rental_duration;
    }

    public float getRental_rate() {
        return rental_rate;
    }

    public void setRental_rate(float rental_rate) {
        this.rental_rate = rental_rate;
    }

    public short getLength() {
        return length;
    }

    public void setLength(short length) {
        this.length = length;
    }

    public String getLast_update() {
        return last_update;
    }

    public void setLast_update(String last_update) {
        this.last_update = last_update;
    }

    @Override
    public String toString() {
        return "Film{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", description='" + description + '\'' +
                ", release_year='" + release_year + '\'' +
                ", language_id=" + language_id +
                ", rental_duration=" + rental_duration +
                ", rental_rate=" + rental_rate +
                ", length=" + length +
                ", last_update='" + last_update + '\'' +
                '}';
    }
}
