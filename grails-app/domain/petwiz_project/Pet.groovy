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

    static belongsTo = [person:Person]

    static constraints = {
        pet_id(nullable: false,blank:false,unique:true)
        pet_type(nullable: false,blank:false)
        pet_name(nullable: false,blank:false)
        pet_genre(nullable: false,blank:false)
        pet_age(nullable: true)
    }
}
