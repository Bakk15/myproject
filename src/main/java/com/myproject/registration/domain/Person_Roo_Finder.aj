// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.myproject.registration.domain;

import com.myproject.registration.domain.Person;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

privileged aspect Person_Roo_Finder {
    
    public static Long Person.countFindPeopleByIdentityID(long identityID) {
        EntityManager em = Person.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM Person AS o WHERE o.identityID = :identityID", Long.class);
        q.setParameter("identityID", identityID);
        return ((Long) q.getSingleResult());
    }
    
    public static Long Person.countFindPeopleByLastName(String lastName) {
        if (lastName == null || lastName.length() == 0) throw new IllegalArgumentException("The lastName argument is required");
        EntityManager em = Person.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM Person AS o WHERE o.lastName = :lastName", Long.class);
        q.setParameter("lastName", lastName);
        return ((Long) q.getSingleResult());
    }
    
    public static TypedQuery<Person> Person.findPeopleByIdentityID(long identityID) {
        EntityManager em = Person.entityManager();
        TypedQuery<Person> q = em.createQuery("SELECT o FROM Person AS o WHERE o.identityID = :identityID", Person.class);
        q.setParameter("identityID", identityID);
        return q;
    }
    
    public static TypedQuery<Person> Person.findPeopleByIdentityID(long identityID, String sortFieldName, String sortOrder) {
        EntityManager em = Person.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM Person AS o WHERE o.identityID = :identityID");
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" ").append(sortOrder);
            }
        }
        TypedQuery<Person> q = em.createQuery(queryBuilder.toString(), Person.class);
        q.setParameter("identityID", identityID);
        return q;
    }
    
    public static TypedQuery<Person> Person.findPeopleByLastName(String lastName) {
        if (lastName == null || lastName.length() == 0) throw new IllegalArgumentException("The lastName argument is required");
        EntityManager em = Person.entityManager();
        TypedQuery<Person> q = em.createQuery("SELECT o FROM Person AS o WHERE o.lastName = :lastName", Person.class);
        q.setParameter("lastName", lastName);
        return q;
    }
    
    public static TypedQuery<Person> Person.findPeopleByLastName(String lastName, String sortFieldName, String sortOrder) {
        if (lastName == null || lastName.length() == 0) throw new IllegalArgumentException("The lastName argument is required");
        EntityManager em = Person.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM Person AS o WHERE o.lastName = :lastName");
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" ").append(sortOrder);
            }
        }
        TypedQuery<Person> q = em.createQuery(queryBuilder.toString(), Person.class);
        q.setParameter("lastName", lastName);
        return q;
    }
    
}