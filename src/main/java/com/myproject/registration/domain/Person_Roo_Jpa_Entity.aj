// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.myproject.registration.domain;

import com.myproject.registration.domain.Person;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect Person_Roo_Jpa_Entity {
    
    declare @type: Person: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Person.id;
    
    @Version
    @Column(name = "version")
    private Integer Person.version;
    
    public Long Person.getId() {
        return this.id;
    }
    
    public void Person.setId(Long id) {
        this.id = id;
    }
    
    public Integer Person.getVersion() {
        return this.version;
    }
    
    public void Person.setVersion(Integer version) {
        this.version = version;
    }
    
}
