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

    String id;
    String firstName;
    String secondName;
    String lastName;
    String secondLastName;
    String password
    int age;
    String address;
    String email;
    long phone;
    boolean enabled = true
    boolean accountExpired
    boolean accountLocked
    boolean passwordExpired


    static hasMany = [
            pets : Pet, events: Event, persons:Person,other_services:Other_Service
    ]
    static belongsTo = [rols:Rol]
    static constraints = {
        id(nullable: false,blank:false,unique:true)
        firstName(nullable: false,blank:false)
        secondName(nullable: true)
        lastName(nullable: false,blank:false)
        secondLastName(nullable: true)
        age(nullable: false,blank:false)
        address(nullable: false,blank:false)
        email(nullable: false,blank:false,unique:true)
        phone(nullable: true,blank:false,unique:true)
    }

    Person(String firstName, String password, String lastName,int age, String address, String email ) {
        this()
        this.firstName = firstName
        this.password = password
        this.lastName = lastName
        this.age = age
        this.address = address
        this.email = email
    }

    Set<Rol> getAuthorities() {
        SecUserSecRole.findAllBySecUser(this)*.Rol
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

    static transients = ['springSecurityService']


    static mapping = {
        password column: '`password`'
    }
}
