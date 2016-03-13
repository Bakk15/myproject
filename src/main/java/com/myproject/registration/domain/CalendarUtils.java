package com.myproject.registration.domain;

import javax.faces.FacesException;
import javax.faces.context.FacesContext;
import java.text.SimpleDateFormat;
import java.util.Date;


public class CalendarUtils {

    public CalendarUtils() {
    }

    public static String getValueAsString(FacesContext context, HijriDatePicker calendar) {
        Object submittedValue = calendar.getSubmittedValue();
        if(submittedValue != null) {
            return submittedValue.toString();
        } else {
            Object value = calendar.getValue();
            if(value == null) {
                return null;
            } else if(calendar.getConverter() != null) {
                return calendar.getConverter().getAsString(context, calendar, value);
            } else {
                SimpleDateFormat dateFormat = new SimpleDateFormat(calendar.calculatePattern(), calendar.calculateLocale(context));
                dateFormat.setTimeZone(calendar.calculateTimeZone());
                return dateFormat.format(value);
            }
        }
    }

    public static String getValueAsString(FacesContext context, HijriDatePicker calendar, Object value) {
        if(value == null) {
            return null;
        } else if(value instanceof String) {
            return (String)value;
        } else if(value instanceof Date) {
            SimpleDateFormat dateFormat = new SimpleDateFormat(calendar.calculatePattern(), calendar.calculateLocale(context));
            dateFormat.setTimeZone(calendar.calculateTimeZone());
            return dateFormat.format((Date)value);
        } else {
            throw new FacesException("Value could be either String or java.util.Date");
        }
    }

    public static String getTimeOnlyValueAsString(FacesContext context, HijriDatePicker calendar) {
        Object value = calendar.getValue();
        if(value == null) {
            return null;
        } else if(value instanceof String) {
            return (String)value;
        } else if(value instanceof Date) {
            SimpleDateFormat format = new SimpleDateFormat(calendar.calculateTimeOnlyPattern(), calendar.calculateLocale(context));
            format.setTimeZone(calendar.calculateTimeZone());
            return format.format(calendar.getValue());
        } else {
            throw new FacesException("Value could be either String or java.util.Date");
        }
    }

    public static String convertPattern(String pattern) {
        if(pattern == null) {
            return null;
        } else {
            pattern = pattern.replaceAll("yy", "y");
            if(pattern.indexOf("MMM") != -1) {
                pattern = pattern.replaceAll("MMM", "M");
            } else {
                pattern = pattern.replaceAll("M", "m");
            }

            pattern = pattern.replaceAll("EEE", "D");
            if(pattern.indexOf("H") != -1 || pattern.indexOf("h") != -1) {
                pattern = pattern.replaceAll("a", "TT");
            }

            return pattern;
        }
    }
}

