/**
 * Created by mssg_ on 5/17/2016.
 */

function showP(username){

    $(document).ready(function(){



        $.ajax({
            // la URL para la petición
            url : _url2,

            // la información a enviar
            // (también es posible utilizar una cadena de datos)
            data : { username1 : username },

            // especifica si será una petición POST o GET
            type : 'GET',

            // el tipo de información que se espera de respuesta
            dataType : 'json',

            // código a ejecutar si la petición es satisfactoria;
            // la respuesta es pasada como argumento a la función
            success : function(data) {
                // process the data coming back

            },

            // código a ejecutar si la petición falla;
            // son pasados como argumentos a la función
            // el objeto de la petición en crudo y código de estatus de la petición
            error : function(xhr, status) {
                alert('Disculpe, existió un problema');
            },

        });

    });

}