package petwiz_project

/**
 * Created by Andres on 16/03/2016.
 */
class Person {

    String id;
    String firstName;
    String secondName;
    String firstLastName;
    String secondLastName;
    Date age;
    String address;
    String email;
    long phone;

    static hasMany = [
            pets : Pet, events: Event, persons:Person,other_services:Other_Service
    ]
    static belongsTo = [rols:Rol]
    static constraints = {
        id(nullable: false,blank:false,unique:true)
        firstName(nullable: false,blank:false)
        secondName(nullable: true)
        firstLastName(nullable: false,blank:false)
        secondLastName(nullable: true)
        age(nullable: false,blank:false)
        address(nullable: false,blank:false)
        email(nullable: false,blank:false,unique:true)
        phone(nullable: false,blank:false,unique:true)
    }
}
