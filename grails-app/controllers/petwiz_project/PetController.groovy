package petwiz_project

import grails.transaction.Transactional

@Transactional(readOnly = true)
class PetController {

    static allowedMethods = [addPet: "POST", updatePet: "PUT", deletePet: "DELETE"]

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

    @Transactional
    def addPet(Pet pet) {

        def user = Person.findByUsername(session["user"])


        def typePet = (params.typePet).toString()
        def name = (params.name).toString()
        def genre = (params.genre).toString()
        def age = (params.age).toInteger()


        println("name pet: " + name)
        println("type pet: " + typePet)
        println("age: " + age)
        println("genre: " + genre)

        print "pet not saved"
        if (user) {

            print "Current user: " + user.username

            user.save()


            //def pet
            pet = new Pet(type: typePet, name: name, genre: genre, age: age)
            pet.pet_type = typePet
            pet.pet_name = name
            pet.pet_genre = genre
            pet.pet_age = age
            pet.save()

            user.addToPets(pet)
            user.save(failOnError: true, flush: true)
        }

        print "pet saved"

        def list = user.pets//Para mirar las mascotas que tiene un usuario
        list.each {
            def listPetName = it.pet_name

            print "PET ADDED: " + listPetName

        }
        print "Number of pets: " + list.size()
        print "First pet: " + list.getAt(0).pet_name


        render(controller: 'person', view: '/person/mypets');

    }

    @Transactional
    def deletePet(Pet pet) {
        def userD = Person.findByUsername(session["user"])
        def currentPet = userD.pets[0]



        print "Select current pet: " + currentPet.pet_name

        print "Deleting pet..."
        pet = Pet.get(params.id)
        //def pet = Pet.get(params.getIdentifier())
        //pet.getId()

        pet.delete(flush: true)

        print "Pet deleted"

        redirect(controller: 'person', view: '/person/home');

    }

    @Transactional
    def updatePet(Pet pet) {

        if (session["user"]) {
            print "Update data..."
            //def pet = Pet.get(params.infoIdPet)
            pet = Pet.get(params.id)

            pet.pet_type = (params.typePet).toString()
            pet.pet_name = (params.name).toString()
            pet.pet_genre = (params.genre).toString()
            pet.pet_age = (params.age).toInteger()

            //pet.pet_type = params.myTypePet
            //pet.pet_name = params.myName
            //pet.pet_genre = params.myGenre
            //pet.pet_age = params.myAge

            //pet.pet_name = params.myName

            pet.save(flush:true)

            redirect(controller: 'person', action:'mypets');
        }else{
            redirect(controller: 'person', action:'home');
        }

    }


}

