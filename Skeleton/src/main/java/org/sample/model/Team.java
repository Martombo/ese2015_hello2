package org.sample.model;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import java.sql.Timestamp;


@Entity
public class Team {

	@Id
    @GeneratedValue
    private Long id;

    private String name;
    private Timestamp date;
    

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
    
    public void setDate() {
    	this.date = new Timestamp(System.currentTimeMillis());
    }

    public Timestamp getDate() {
        return date;
    }
	    

}
