package petwiz_project

/**
 * Created by Andres on 16/03/2016.
 */
class Pet implements Serializable{


    String pet_type;
    String pet_name;
    String pet_genre;
    int pet_age;

    static belongsTo = [person:Person]

    static constraints = {

        pet_type(nullable: false,blank:false)
        pet_name(nullable: false,blank:false)
        pet_genre(nullable: false,blank:false)
        pet_age(nullable: true)
    }
}
