package org.sample.controller.pojos;

import java.sql.Timestamp;

public class TeamForm {

    private Long id;
    private String name;
    private Timestamp date;

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public Timestamp getDate() {
    	return date;
    }

    public void setDate(Timestamp date) {
    	this.date = date;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }
    
}
