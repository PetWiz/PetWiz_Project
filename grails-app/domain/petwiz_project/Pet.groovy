package petwiz_project

import java.text.SimpleDateFormat

/**
 * Created by Andres on 16/03/2016.
 */
class Pet implements Serializable{


    String type;
    String name;
    String genre;
    Date born;
    int age
    byte[] photo
    String photoType

    static belongsTo = [person:Person]

    static constraints = {

        type(nullable: false,blank:false)
        name(nullable: false,blank:false)
        genre(nullable: false,blank:false)
        born(nullable: true)
        photo(nullable: true, blank:true, maxSize: 1024 * 1024)
        photoType(nullable: true, blank:true)
    }

    def setAge(){
        Calendar dob = Calendar.getInstance();
        dob.setTime(born);
        Calendar today = Calendar.getInstance();
        int age = today.get(Calendar.YEAR) - dob.get(Calendar.YEAR);
        if (today.get(Calendar.DAY_OF_YEAR) < dob.get(Calendar.DAY_OF_YEAR))
            age--;
        return age;
    }

    def getBday(){
        SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
        return dateFormat.format(born)
    }
}