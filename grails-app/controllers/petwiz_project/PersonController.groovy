package petwiz_project

import grails.transaction.Transactional
import org.springframework.web.multipart.MultipartHttpServletRequest
import org.springframework.web.multipart.commons.CommonsMultipartFile

@Transactional(readOnly = true)
class PersonController {

    static allowedMethods = [addPet: "POST", updatePet: "POST", deletePet: "DELETE", addEvent: "POST", updateEvent: "POST", deleteEvents: "DELETE", addPetToEvents:"POST"]
    private static final okcontents = ['image/png', 'image/jpeg', 'image/gif']

    def home() {
        render(controller: 'person', view: '/person/home');
    }

    def mypets() {
        render(controller: 'person', view: '/person/mypets');

    }
    def events() {
        render(controller: 'person', view: '/person/events');
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
        def photo = params.photo
        def photoType = params.photoType



        println("name pet: " + name)
        println("type pet: " + typePet)
        println("age: " + age)
        println("genre: " + genre)
        println("id: " + id)
        println("photo: " + photo)

        //Obtener la imagen
        MultipartHttpServletRequest mpr = (MultipartHttpServletRequest) request;
        CommonsMultipartFile f = (CommonsMultipartFile) mpr.getFile("avatar")
        if (!okcontents.contains(f.getContentType())) {
            flash.message = "El avatar debe tener alguno de los siguientes formatos: ${okcontents}"

        }
        print f


        print "pet not saved"
        if (user) {

            print "Current user: " + user.username

            user.save()


            //def pet
            pet = new Pet(type: typePet, name: name, genre: genre, age: age, photo:photo, photoType: photoType )
            pet.pet_type = typePet
            pet.pet_name = name
            pet.pet_genre = genre
            pet.pet_age = age
            pet.photo = f.bytes
            pet.photoType = f.contentType
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
    def delete() {
        def user = Person.findByUsername(session["user"])
        def pet=Pet.get(params.id)
        print pet.pet_name
        pet.delete(flush: true)
        print pet.pet_name
        def list = user.pets//Para mirar las mascotas que tiene un usuario
        list.each {
            def listPetName = it.pet_name

            print "CURRENT PET: " + listPetName

        }
        print "Number of pets: " + list.size()
        /*   def userD = Person.findByUsername(session["user"])
           def currentPet = userD.pets[0]



           print "Select current pet: " + currentPet.pet_name

           print "Deleting pet..."
           pet = Pet.get(params.id)
           //def pet = Pet.get(params.getIdentifier())
           //pet.getId()




           print "Pet deleted"

           redirect(controller: 'person', view: '/person/home');*/
        redirect(action: 'mypets');
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

    def petImageHandler() {
        def name = params.id.toString()
        def pet = Pet.findByPet_name(name)

        if (!pet.photo || !pet.photoType) {
            response.sendError(404)
            return
        }
        response.contentType = pet.photoType
        response.contentLength = pet.photo.size()
        OutputStream out = response.outputStream
        out.write(pet.photo)
        out.close()

        println "Current name: " + name
        println "ImgName: "+ pet.photo.getProperties()
        println "ImgType: "+ pet.photoType
    }
    @Transactional
    def addEvent() {
        def user = Person.findByUsername(session["user"])
        def name = (params.eve_name).toString()
        def address = (params.eve_address).toString()
        def id = (params.id).toLong()
        def description = (params.eve_description).toString()
        def date = params.date
        println("name eventt: " + name)
        println("address event: " + address)
        println("description event: " + description)
        println("description date: " + date)
        println("id: " + id)
        print "event not saved"
        if (user) {
            Event event = new Event(eve_name:name, eve_address:address, eve_description:description, date:date)
            event.eve_name=name
            event.eve_address=address
            event.eve_description=description
            event.date=date
            event.id=id
            event.save()
            user.addToEvents(event)
            user.save(failOnError: true, flush: true)
        }
        def list = user.events//Para mirar las mascotas que tiene un usuario
        list.each {
            def listPetName = it.eve_name

            print "EVENT ADDED: " + listPetName

        }
        print "Number of events: " + list.size()
        redirect(action: 'myevents');
    }
    @Transactional
    def updateEvent() {
        def user = Person.findByUsername(session["user"])
        def name = (params.eve_name).toString()
        def address = (params.eve_address).toString()
        def description = (params.eve_description).toString()
        def date = (params.date)
        def id = (params.id).toLong()

        if (user){
            Event tmp = Event.get(id)
            tmp.eve_name = name
            tmp.eve_address = address
            tmp.eve_description = description
            tmp.date = date
            tmp.save(flush: true)

            render(controller: 'person', view: '/person/myevents');

        }else{
            redirect(controller:'person',action:'home')
        }
    }
    @Transactional
    def deleteEvent() {
        print "asd"
        def user = Person.findByUsername(session["user"])
        def event=Event.get(params.id)
        print event.eve_name
        event.delete(flush: true)
        print event.eve_name
        def list = user.events//Para mirar las mascotas que tiene un usuario
        list.each {
            def listPetName = it.eve_name

            print "CURRENT Event: " + listPetName

        }
        print "Number of events: " + list.size()
        redirect(action: 'myevents');
    }
    def showAvatarPet(){
        def pet = Pet.findById(params.id)
        OutputStream out = response.outputStream
        out.write(pet.photo)
        out.close()

    }
    @Transactional
    def addPetToEvent(){
        def f = params.get('params').toString().split(']')
        print f[0]
        print f[1]
        f[0] = f[0][1..-1]
        f[1] = f[1][1..-1]
        print f[0] + "ddddddddddddddddddddddddd"
        def ids = f[0].split(",")
        print ids
        def event = Event.findById(f[1].toLong())
        ids.each {
            def pet = Pet.findById(it.toLong())
            event.addToPets(pet)
            event.save(failOnError: true, flush: true)
        }
        def list = Event.list()//Para mirar las mascotas que tiene un usuario
        list.each {
            def listPetName = it.eve_name

            print "CURRENT Event: " + listPetName
            def list2 = it.pets
            print list2
        }
        print "Number of events: " + list.size()
        redirect(action: 'events')
    }
}
