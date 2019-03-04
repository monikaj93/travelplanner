package com.travelplanner.model;



import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;

@Entity
@Table(name = "appuser")
public class AppUser {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "travel_id")
    private Travel travel;

    @NotEmpty(message = "Please provide your name")
    private String name;
    @NotEmpty(message = "Please provide email")
    @Email(message = "Please provide valid email")
    private String email;
    @NotEmpty(message = "Please provide password")
    //@Size(min=8, max=20, message="Password is incorrect, please use 8 to 20 characters")
    private String password;
    //private String passwordConfirm;
    private int active;

//    @OneToMany(mappedBy="appuser")
//    private Set<Travel> travel;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

//    @Transient//variable is not gonna be stored in database
//    public String getPasswordConfirm() {
//        return passwordConfirm;
//    }
//
//    public void setPasswordConfirm(String passwordConfirm) {
//        this.passwordConfirm = passwordConfirm;
//    }

    public int getActive() {
        return active;
    }

    public void setActive(int active) {
        this.active = active;
    }
}