package petwiz_project

class PetController {


    def index() {
        redirect(controller:'pet',action:'viewAddPet')
        //render(controller: 'index', view: '/index/index')
    }


    public def static viewPets(){
        def pets = Pet.all()
        def lista =[] as Set
        pets.each {it->
            lista.add(it.getPet_name())
        }
        return lista
    }

    def viewAddPet(){
        println()

        if(session["user"]){
            def pets = viewPets()
            def allPets = PersonController.viewPet(session["user"])
            render(controller:'pet',view:'/person/mypets',model:[search:pets,pets:allPets,user:Person.findByUsername(Person.name)])
        }else{
            redirect(controller:'index',action:'home')
        }
    }

    def viewDeletePet(){
        if (session["user"]){
            def pets = viewPets()
            def allPets = PersonController.viewPet(session["user"])
            render(controller:'pet',view:'/person/mypets',model:[search:pets,pets:allPets,totalPet:Pet.count,user:user])
        }else{
            redirect(controller:'index',action:'home')
        }
    }

    def addPet(){

        def user = Person.findByUsername(session["user"])
        def name = params.name
        def typePet = (params.typePet).toString()
        def age = (params.age).toInteger()
        def genre = (params.genre).toString()


        def pet
        //pet = new Pet(name:name,description:description,type:typePet,age:age,genre:genre)
        pet = new Pet(name:name,type:typePet,age:age,genre:genre)

        print user

        println("name pet "+name)
        //println("description pet "+description)
        println("type pet "+typePet)
        println("age "+age)
        println("genre "+genre)


        user.addToPets(pet)
        pet.save(flush:true)
        user.save(flush:true)
        def list=user.pets//Para recuperar las mascotas que tiene un usuario asociado
        list.each {
            def listPet =it.pet_name
            print listPet
        }
        print "PET ADDED"
        redirect(controller: 'person', action: 'mypets');
    }

    def deletePet(){
        println "Delete"
        def pet = Pet.get(params.id)
        pet.delete(flush:true)
        redirect(controller:'user',action:'home')
    }
    def deletePet1(){
        println "Delete"
        def keys = params.keySet()
        for (Object key : keys) {
            if (!key.equals("action") && !key.equals("controller") && !key.equals("format")) {
                def pet = Pet.get(params.get(key))
                pet.delete(flush:true)
            }
        }
        redirect(controller:'user',action:'viewHome')
    }
    def updateData(){
        if (session["user"]){
            def pet = Pet.get(params.infoIdPet)
            pet.pet_name = params.name
            pet.pet_type = (params.typePet).toString()
            pet.pet_age = (params.age).toInteger()
            pet.pet_genre = (params.genre).toString()

            //pet.pet_name = params.myName

            pet.save(flush:true)
            redirect(controller:'person',action:'mypets')
        }else{
            redirect(controller:'person',action:'home')
        }
    }


}

