package petwiz_project

/**
 * Created by Andres on 16/03/2016.
 */
class Event {


    String eve_name;
    String eve_address;
    String eve_description;
    Date date;


    static hasMany = [pets:Pet]
    static belongsTo = [person:Person]



    static constraints = {
        person nullable: false
        pets nullable: true
        eve_name(nullable: false,blank:false)
        eve_address(nullable: false,blank:false)
        eve_description(nullable: false,blank:false)
        date(nullable: false,blank:false)
    }
    def dateFormat(){
        String newDate = date.format( 'd-M-yyyy' )
        return newDate
    }
}
