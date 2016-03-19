class BootStrap {

    def init = { servletContext ->
        new Person(id: 1234, firstName:"Santiago", secondName:"Andres", firstLastName: "Blanco", secondLastName: "Marquez",
        age: 21, address: "Calle 74", email:"sablancom@unal.edu.co").save()
    }
    def destroy = {
    }
}
