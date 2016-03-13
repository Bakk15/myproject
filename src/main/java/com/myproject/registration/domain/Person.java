package com.myproject.registration.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.Size;
import javax.validation.constraints.NotNull;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;
import javax.persistence.Lob;
import org.springframework.roo.classpath.operations.jsr303.RooUploadedFile;
import com.myproject.registration.reference.MaritalStatus;
import javax.persistence.Enumerated;
import com.myproject.registration.reference.AddressType;
import javax.validation.constraints.Min;
import com.myproject.registration.reference.HairColors;
import com.myproject.registration.reference.EyeColors;
import com.myproject.registration.reference.BloodGroup;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(finders = { "findPeopleByLastName", "findPeopleByIdentityID" })
public class Person {

    /**
     */
    @Size(min = 3, max = 30)
    private String firstName;

    /**
     */
    @NotNull
    @Size(min = 3, max = 30)
    private String lastName;

    /**
     */
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date birthDay;

    /**
     */
    @RooUploadedFile(contentType = "image/jpeg")
    @Lob
    private byte[] image;

    /**
     */
    @NotNull
    @Enumerated
    private MaritalStatus maritalStatus;

    /**
     */
    @Size(min = 3, max = 30)
    private String district;

    /**
     */
    @NotNull
    @Size(min = 3, max = 30)
    private String madinah;

    /**
     */
    @NotNull
    @Size(min = 3, max = 60)
    private String place;

    /**
     */
    @NotNull
    @Enumerated
    private AddressType addressType;

    /**
     */
    @NotNull
    @Min(0L)
    private long identityID;

    /**
     */
    @NotNull
    @Enumerated
    private HairColors hairColors;

    /**
     */
    @NotNull
    @Enumerated
    private EyeColors eyeColors;

    /**
     */
    @NotNull
    @Enumerated
    private BloodGroup bloodType;

    /**
     */
    @Size(min = 3, max = 30)
    private String office;

    /**
     */
    @NotNull
    @Size(min = 3, max = 30)
    private String jobTitle;
}
