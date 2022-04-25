package pl.coderslab.Event;

import lombok.Getter;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;
import pl.coderslab.Admin.User;
import pl.coderslab.Category.Category;
import pl.coderslab.City.City;

import javax.persistence.*;
import javax.validation.constraints.*;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.util.List;

@Entity
@Getter
@Setter
@Table(name = "events")
public class Event {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    //    @Size(min = 10)
//    @NotBlank
    private String title;

    //    @Size(min = 200)
//    @NotBlank
    @Lob
    @Column(length = 100000)
    private String content;

    @ManyToOne
    private Category category;

    @ManyToOne
    private User user;

    @ManyToMany(fetch = FetchType.EAGER)
    private List<User> artists;

    //    @NotBlank
    private String date;

    //    @NotBlank
    private String time;

    //    @NotBlank
    private String price;

    @ManyToOne
    private City city;

    //    @NotBlank
    private String address;


    private LocalDateTime created;

    @PrePersist
    public void prePersist() {
        created = LocalDateTime.now();
    }


    private LocalDateTime updated;

    @PreUpdate
    public void preUpdate() {
        updated = LocalDateTime.now();
    }


}
