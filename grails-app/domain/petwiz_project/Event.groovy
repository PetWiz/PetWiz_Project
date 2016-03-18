package petwiz_project

/**
 * Created by Andres on 16/03/2016.
 */
class Event {

    String eve_id;
    String eve_name;
    String eve_address;
    String eve_description;
    Date date;


    static hasMany = [pets:Pet]
    static belongsTo = [person:Person]



    static constraints = {
        eve_id(nullable: false,blank:false,unique:true)
        eve_name(nullable: false,blank:false)
        eve_address(nullable: false,blank:false)
        eve_description(nullable: false,blank:false)
        date(nullable: false,blank:false)
    }
}
