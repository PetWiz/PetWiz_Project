package petwiz_project

/**
 * Created by Andres on 16/03/2016.
 */
class Pet {

    String pet_id;
    String pet_type;
    String pet_name;
    String pet_genre;
    Date pet_age;

    static hasMany = [events:Event]
    static belongsTo = [person:Person]

    static constraints = {
    }
}
