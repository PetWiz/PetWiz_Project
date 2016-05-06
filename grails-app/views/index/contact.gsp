<!DOCTYPE html>
<html xmlns:fb="">
<head>
    <title>Petwiz: Contacto</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="layout" content="login"/>
    <meta name="layout" content="main"/>
</head>
<body>
<main>
    <div class="">
        <div class="row">
            <div class="col s12 m4 l4">
                <div class="row container">
                    <br/>
                    <h6 class="petwiz-font">Puedes Contactarte con nosotros atraves de:</h6>
                    <br/>
                    <div class="row">
                        <a  href="http://www.twitter.com/petwiz_2016">
                            <img src="https://lh3.ggpht.com/nn0_2f2yehKR7fnMIZ0XrSWbC5Q0VPP7vNmLMV7ndNFinClynZRO4RBTGfbjVOs1fyA=w300" width=70px height="auto" style="margin-left: -3px"/>
                            <span class="petwiz-font" style="padding-left: 10px">Twitter</span>
                        </a>
                    </div>
                    <div class="row ">
                        <a href="https://www.instagram.com/petwizweb/">
                            <img src="https://pbs.twimg.com/profile_images/674026885580386304/a3rxT9ck.jpg"
                                 width=63px height="auto"/>
                            <span class="petwiz-font font-orange" style="padding-left: 14px">Instagram</span>
                        </a>
                    </div>
                    <div class="row ">
                        <a href="https://www.facebook.com/profile.php?id=100011386584112&fref=ts">
                            <img src="http://media1.s-nbcnews.com/j/streams/2013/June/130614/6C7884939-facebook-logo-detail.blocks_desktop_small.gif"
                                 width=90px height="auto" style="margin-left: -13px"/>
                            <span class="petwiz-font blue-text">Facebook</span>
                        </a>
                    </div>

                </div>
            </div>
            <div class="col s12 m12 l8">
                <g:form action="send">
                    <br/>
                    <div class="row">
                        <h6 class="petwiz-font">O Puedes llenar el siguiente formulario</h6>
                    </div>
                    <div class="row">
                        <div class="input-field col s12 m4 l4">
                            <input id="email" type="email" class="validate" name="email">
                            <label for="email" data-error="No es valido" data-success="Continua">Tu correo para contactarte</label>
                        </div>
                        <div class="input-field col s12 m4 l4">
                            <input id="subject" type="text" class="validate" name="subject">
                            <label for="subject">Asunto</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s8 m8 l8">
                            <textarea id="body" class="materialize-textarea" name="body"></textarea>
                            <label for="body">Cuentanos que sucede</label>
                        </div>
                    </div>
                    <a class="waves-effect waves-light btn" type="submit">Enviar</a>
                </g:form>
            </div>

        </div>
    </div>
</main>
</body>
</html>