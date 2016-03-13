package com.myproject.registration.web;
import com.myproject.registration.domain.Person;
import org.springframework.roo.addon.jsf.managedbean.RooJsfManagedBean;
import org.springframework.roo.addon.serializable.RooSerializable;

@RooSerializable
@RooJsfManagedBean(entity = Person.class, beanName = "personBean")
public class PersonBean {
}
