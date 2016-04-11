package petwiz_project

import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString

/**
 * Created by Andres on 16/03/2016.
 */
@EqualsAndHashCode(includes='authority')
@ToString(includes='authority', includeNames=true, includePackage=false)
class Rol implements Serializable {

    private static final long serialVersionUID = 1

    String authority;
    static hasMany = [persons:Person]
    static belongsTo = Person
    static constraints = {
        authority(nullable: false,blank:false, unique:true)
    }
    static mapping = {
        cache true
    }

    Rol (int id, String name){
        this()
        this.authority = name
    }
}
