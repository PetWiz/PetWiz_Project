package petwiz_project

/**
 * Created by Andres on 16/03/2016.
 */
class Rol {

    String rol_id;
    String rol_name;
    static hasMany = [persons:Person]
    static constraints = {
        rol_id(nullable: false,blank:false,unique:true)
        rol_name(nullable: false,blank:false)
    }
}
