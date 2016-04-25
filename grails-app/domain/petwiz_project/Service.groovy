package petwiz_project

class Service {

    String name
    long phone
    String description
    String address
    String webpage
    float coordenate_x
    float coordenate_y
    byte[] photo
    String photoType
    String serviceType

    static hasMany = [persons:Person,pets:Pet]

    static constraints = {
        name(nullable: false,blank:false)
        phone(nullable: false,blank:false)
        description(nullable: false,blank:false)
        coordenate_x(nullable: false, blank:false)
        coordenate_y(nullable: false, blank:false)
        serviceType(nullable: false, blank:false)
        address(nullable: false, blank:false)
        webpage(nullable: true, blank:true)
        photo(nullable: true, blank:true, maxSize: 1024 * 1024)
        photoType(nullable: true, blank:true)
    }
}
