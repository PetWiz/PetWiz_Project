package petwiz_project

/**
 * Created by Andres on 16/03/2016.
 */
class Other_Service {

    String oth_id;
    String name;
    String oth_description;

    static belongsTo = [
            persons:Person
    ]

    static constraints = {
    }
}
