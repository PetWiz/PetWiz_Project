package petwiz_project

import org.apache.tools.ant.types.resources.selectors.Date

/**
 * Created by Andres on 16/03/2016.
 */
class Person {

    String id;
    String name;
    Date age;
    String address;
    String email;
    long phone;

    static hasMany = [pets : Pet, events: Event, persons:Person]

    static constraints = {
    }
}
