package pl.coderslab.Admin;

import lombok.Getter;
import lombok.Setter;
import pl.coderslab.Event.Event;
import pl.coderslab.Job.Job;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import java.util.List;
import java.util.Set;

@Entity
@Getter
@Setter
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false, unique = true, length = 60)

    private String username;

    private String password;

    private String name;

    private String company;

    @ManyToOne
    private Job job;

    private String country;

    private String address;

    private String phone;

    private String email;

    private int enabled;

    @Lob
    @Column(length = 100000)
    private String about;

    private String twitter;

    private String facebook;

    private String instagram;


    @ManyToMany(fetch = FetchType.EAGER)
    private Set<Role> roles;



}