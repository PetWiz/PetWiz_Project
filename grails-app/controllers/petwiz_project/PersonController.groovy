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

    def pet() {
        Pet pet = Pet.findById(params.id)
        render( view: '/person/pet', model: [id: pet.id, name:pet.name, age: pet.age, type: pet.type, genre: pet.genre, bday:pet.getBday(), photo:pet.photo  ]);
    }


    def muestra() {

        //def name = params.name
        //def kind = params.kind
        //def age = params.age
        //def genre = params.genre

        //[name:name,kind:kind,age:age, genre:genre]

    }

    @Transactional
    def addPet() {

        def user = Person.findByUsername(session["user"])

        print params
        def typePet = (params.typePet).toString()
        def name = (params.name).toString()
        def genre = (params.genre).toString()
        def date = params.born.split('-')
        def tdate = date[2] + "/" + date[1] + "/" + date[0]
        def bdate = Date.parse("dd/MM/yyyy", tdate)
        def currentTime = new Date()
        print bdate
        print currentTime

        print bdate.after(currentTime)

        //Obtener la imagen
        MultipartHttpServletRequest mpr = (MultipartHttpServletRequest) request;
        CommonsMultipartFile f = (CommonsMultipartFile) mpr.getFile("avatar")
        if (!okcontents.contains(f.getContentType())) {
            flash.message = "El avatar debe tener alguno de los siguientes formatos: ${okcontents}"
        }
        print "pet not saved"
        if (user) {
            print "Current user: " + user.username
            def eqName = false
            user.pets.each{if (it.name.equals(name)) eqName = true; }
            if (eqName){
                flash.message = "El nombre de la Mascota ya existe"
            }
            else if(bdate.after(currentTime)){
                flash.message = "La fecha de nacimiento debe ser menor o igual a la fecha actual: ${currentTime.day}/${currentTime.month}/${currentTime.year}"
            }
            else {
                def pet = new Pet(type: typePet, name: name, genre: genre, born: bdate, photo: f.bytes, photoType: f.contentType)
                def age = pet.setAge()
                pet.age = age
                pet.save()
                user.addToPets(pet)
                user.save(failOnError: true, flush: true)
                print "pet saved"
                flash.message = "Mascota creada exitosamente"
            }
        }
        render(controller: 'person', view: '/person/mypets');
    }

    @Transactional
    def delete() {
        def user = Person.findByUsername(session["user"])
        def pet=Pet.get(params.id)
        print pet.name
        pet.delete(flush: true)
        print pet.name
        def list = user.pets//Para mirar las mascotas que tiene un usuario
        list.each {
            def listPetName = it.pet_name

            print "CURRENT PET: " + listPetName

        }
        print "Number of pets: " + list.size()

        redirect(action: 'mypets');
    }

    @Transactional
    def updatePet(Pet tmp) {
        print "shit"
        def user = Person.findByUsername(session["user"])
        def typePet = (params.typePet2).toString()
        def name = (params.name2).toString()
        def genre = (params.genre2).toString()
        def date = params.ag2.split('-')
        def tdate = date[2] + "/" + date[1] + "/" + date[0]
        def bdate = Date.parse("dd/MM/yyyy", tdate)
        def id = (params.id2).toLong()
        if (user){
            tmp = Pet.get(id)
            tmp.type = typePet
            tmp.name = name
            tmp.genre = genre
            tmp.born = bdate
            tmp.setAge()
            tmp.save(flush: true)

            render(controller: 'person', view: '/person/mypets');
        }else{
            redirect(controller:'user',action:'viewHome')
        }
    }

    def petImageHandler() {
        def name = params.id.toString()
        def pet = Pet.findByName(name)

        if (!pet.photo || !pet.photoType) {
            response.sendError(404)
            return
        }
        response.contentType = pet.photoType
        response.contentLength = pet.photo.size()
        OutputStream out = response.outputStream
        out.write(pet.photo)
        out.close()
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
