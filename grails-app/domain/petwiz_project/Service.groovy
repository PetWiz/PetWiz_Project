package petwiz_project

class Service {

    String name
    long phone
    String description
    String direction
    long coordenate_x
    long coordenate_y
    byte[] photo
    String photoType

    static hasMany = [persons:Person,pets:Pet]

    static constraints = {
        name(nullable: false,blank:false)
        phone(nullable: false,blank:false, unique: true)
        description(nullable: false,blank:false)
        coordenate_x(nullable: false, blank:false)
        coordenate_y(nullable: false, blank:false)
    }
}
