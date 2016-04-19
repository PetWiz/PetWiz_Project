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

    def addPet() {

        def user = Person.findByUsername(session["user"])


        def typePet = (params.typePet).toString()
        def name = (params.name).toString()
        def genre = (params.genre).toString()
        def age = params.age


        println("name pet: "+name)
        println("type pet: "+typePet)
        println("age: "+age)
        println("genre: "+genre)

        print "pet not saved"
        if (user) {

            print "Current user: " + user.username

            user.save()


            def pet
            pet = new Pet(type:typePet,name:name,genre:genre,age:age)
            pet.pet_type = typePet
            pet.pet_name = name
            pet.pet_genre = genre
            pet.pet_age = age
            pet.save()

            user.addToPets(pet)
            user.save(failOnError: true, flush: true)
        }

        print "pet saved"

        def list=user.pets//Para mirar las mascotas que tiene un usuario
        list.each {
            def listPet =it.pet_name
            print "PET ADDED: "+ listPet
        }
        print "Number of pets: "+ list.size()
        print "First pet: "+list.getAt(0).pet_name


        redirect(controller: 'person', view: '/person/mypets');

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

