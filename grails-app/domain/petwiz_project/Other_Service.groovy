package petwiz_project

/**
 * Created by Andres on 16/03/2016.
 */
class Other_Service {

    String oth_id;
    String oth_name;
    String oth_description;

    static belongsTo = [
            persons:Person
    ]

    static constraints = {
        oth_id(nullable: false,blank:false, unique:true)
        oth_name(nullable: false,blank:false)
        oth_description(nullable: false,blank:false)
    }
}
