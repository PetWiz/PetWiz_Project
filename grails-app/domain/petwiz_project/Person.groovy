package petwiz_project

import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString

/**
 * Created by Andres on 16/03/2016.
 */
@EqualsAndHashCode(includes='username')
@ToString(includes='username', includeNames=true, includePackage=false)
class Person implements Serializable{

    private static final long serialVersionUID = 1

    transient springSecurityService

    long id;
    String username
    String password
    Date birthday
    String hometown
    String email;
    static hasMany = [
            pets : Pet, events: Event, persons:Person,other_services:Other_Service, rols:Rol, rank:RankingService
    ]

    static transients = ['springSecurityService']
    static constraints = {
        id(nullable: false,blank:false,unique:true)
        username(nullable: false,blank:false)
        birthday(nullable: false,blank:false)
        hometown(nullable: false,blank:false)
        email(nullable: false,blank:false,unique:true)
        password(nullabale: false, blank:false)
    }

    Person(long id, String username,Date birthday,String hometown, String email, String password ) {
        this()
        this.id = id
        this.username =username
        this.birthday = birthday
        this.hometown = hometown
        this.email = email
        this.password = password
       // encodePassword()
    }

    Set<Rol> getAuthorities() {
        SecUserSecRole.findAllBySecUser(this).collect{it.secRole}
    }

    def beforeInsert() {
        encodePassword()
    }

    def beforeUpdate() {
        if (isDirty('password')) {
            encodePassword()
        }
    }

    protected void encodePassword() {
        password = springSecurityService?.passwordEncoder ? springSecurityService.encodePassword(password) : password
    }

    static mapping = {
        password column: '`password`'
    }
}
