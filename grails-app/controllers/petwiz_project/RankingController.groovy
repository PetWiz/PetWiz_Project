package petwiz_project

import grails.plugin.springsecurity.annotation.Secured

class RankingController {

    def sessionFactory

    @Secured(['ROLE_USER','ROLE_ADMIN'])
    def setRanking() {
        def user = Person.findByUsername(session["user"])
        def service = Service.findById(params.servid)
        print params
        print params.servid
        print "service: " + service
       //  if (!RankingService.findByAuthorAndService(user,service)) {
        def name = "rating_" + service.id
        def cal = params[name]
        def calification = Integer.valueOf(cal)
            def ranked = new RankingService(author: user, service: service, ranked: true, points: calification)
            ranked.save()
            user.addToRank(ranked)
            service.addToRank(ranked)
            ranked.serv = service
            ranked.save(failOnError: true)
            double average = getAverage(service)
            service.setCalification(average)
            service.save(flush:true, failOnError:true)
            print service.getCalification()
            //render(params[name] +" " + av)
        render ("<span class=\"stars\" onload=\"fillstars();\">${service.getCalification()}</span>")
       // }
       // else render("Usuario ya califico Servicio")
    }

        double getAverage(Service serv){
            def suma = 0
            def results = RankingService.findAll{
                service == serv
            }
            results.each {
                suma = suma + it.points
            }
            return Double.valueOf(suma/results.size())
    }

}
