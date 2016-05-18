package petwiz_project

class RankingService {

    Person author
    Service service
    boolean ranked
    int points

    static belongsTo = [serv:Service]
    static constraints = {
    }
}
