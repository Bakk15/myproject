package com.myproject.registration.web.converter;
import com.myproject.registration.domain.Person;
import javax.faces.convert.Converter;
import org.springframework.roo.addon.jsf.converter.RooJsfConverter;

@RooJsfConverter(entity = Person.class)
public class PersonConverter implements Converter {
}
