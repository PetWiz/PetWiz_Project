package petwiz_project

class PersonController {

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

    def muestra() {

        //def name = params.name
        //def kind = params.kind
        //def age = params.age
        //def genre = params.genre

        //[name:name,kind:kind,age:age, genre:genre]

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


}
