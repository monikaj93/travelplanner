package com.travelplanner.model;

import javax.persistence.*;
import javax.validation.constraints.Max;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;
import java.util.Date;

@Entity
@Table(name = "travel")
public class Travel {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @NotEmpty(message = "Please provide destination")
    String destination;

    @NotEmpty(message = "Please provide start date")
    Date startDate;
    @NotEmpty(message = "Please provide end date")
    Date endDate;

    @Size(max=120, message = "Name is too long")
    String travelName;

    @Size(max=240, message = "Description is too long")
    String description;
}
