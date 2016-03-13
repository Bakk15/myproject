// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.myproject.registration.web.converter;

import com.myproject.registration.domain.Person;
import com.myproject.registration.web.converter.PersonConverter;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.convert.FacesConverter;

privileged aspect PersonConverter_Roo_Converter {
    
    declare @type: PersonConverter: @FacesConverter("com.myproject.registration.web.converter.PersonConverter");
    
    public Object PersonConverter.getAsObject(FacesContext context, UIComponent component, String value) {
        if (value == null || value.length() == 0) {
            return null;
        }
        Long id = Long.parseLong(value);
        return Person.findPerson(id);
    }
    
    public String PersonConverter.getAsString(FacesContext context, UIComponent component, Object value) {
        return value instanceof Person ? ((Person) value).getId().toString() : "";
    }
    
}