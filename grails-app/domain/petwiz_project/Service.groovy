package petwiz_project

/**
 * Created by Andres on 16/03/2016.
 */
class Service {

    String ser_id;
    String ser_name;
    long ser_phone;
    String ser_description;

    static hasMany = [persons:Person,pets:Pet]

    static constraints = {
        ser_id(nullable: false,blank:false, unique: true)
        ser_name(nullable: false,blank:false)
        ser_phone(nullable: false,blank:false, unique: true)
        ser_description(nullable: false,blank:false)
    }
}
