package petwiz_project

import grails.transaction.Transactional


class EventController {
    def myevents() {
        render(controller: 'person', view: '/person/myevents');
    }
    @Transactional
    def addEvent() {
        def user = Person.findByUsername(session["user"])
        def name = (params.eve_name).toString()
        def address = (params.eve_address).toString()
        def description = (params.eve_description).toString()
        def date = (params.date).toString()
        println("name eventt: " + name)
        println("address event: " + address)
        println("description event: " + description)
        println("description date: " + date)
        print "event not saved"
        /*if (user) {
            def event = new Event(eve_name:name, eve_address:address, eve_description:description)
            event.eve_name=name
            event.eve_address=address
            event.eve_description=description
            event.save()
            user.addToEvents(event)
            user.save(failOnError: true, flush: true)
        }
        def list = user.events//Para mirar las mascotas que tiene un usuario
        list.each {
            def listPetName = it.eve_name

            print "EVENT ADDED: " + listPetName

        }
        print "Number of events: " + list.size()*/
        redirect(action: 'myevents');
    }


}
