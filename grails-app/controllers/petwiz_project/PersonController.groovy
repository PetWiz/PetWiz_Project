package petwiz_project

import grails.transaction.Transactional

@Transactional(readOnly = true)
class PersonController {

    static allowedMethods = [addPet: "POST", updatePet: "POST", deletePet: "DELETE"]

    def home() {
        render(controller: 'person', view: '/person/home');
    }

    def mypets() {
        render(controller: 'person', view: '/person/mypets');

    }

    def services() {
        render(controller: 'person', view: '/person/services');
    }

    def myevents() {
        render(controller: 'person', view: '/person/myevents');
    }
    def myfriends() {
        render(controller: 'person', view: '/person/myfriends');
    }

    def muestra() {

        //def name = params.name
        //def kind = params.kind
        //def age = params.age
        //def genre = params.genre

        //[name:name,kind:kind,age:age, genre:genre]

    }


    @Transactional
    def addPet(Pet pet) {

        def user = Person.findByUsername(session["user"])


        def typePet = (params.typePet).toString()
        def name = (params.name).toString()
        def genre = (params.genre).toString()
        def age = (params.age).toInteger()
        def id = (params.id).toLong()



        println("name pet: " + name)
        println("type pet: " + typePet)
        println("age: " + age)
        println("genre: " + genre)
        println("id: " + id)


        print "pet not saved"
        if (user) {

            print "Current user: " + user.username

            user.save()


            //def pet
            pet = new Pet( type: typePet, name: name, genre: genre, age: age)

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

        render(controller: 'person', view: '/person/mypets');

    }

    @Transactional
    def updatePet(Pet tmp) {
        print "shit"
        def user = Person.findByUsername(session["user"])
        def typePet = (params.typePet2).toString()
        def name = (params.name2).toString()
        def genre = (params.genre2).toString()
        def age = (params.age2).toInteger()
        def id = (params.id2).toLong()

        if (user){

            tmp = Pet.get(id)
            tmp.pet_type = typePet
            tmp.pet_name = name
            tmp.pet_genre = genre
            tmp.pet_age = age
            tmp.save(flush: true)

            render(controller: 'person', view: '/person/mypets');

        }else{
        	redirect(controller:'user',action:'viewHome')
        }

    }

}

