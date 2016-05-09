<%--
  Created by IntelliJ IDEA.
  User: Ace
  Date: 8/05/2016
  Time: 11:31
--%>

<%@ page import="petwiz_project.Person" %>
<html>
<head>
    <title>Petwiz: Mis mascotas</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="layout" content="main" />
</head>
<body>

<main>
    <div class="row">
        <div class="center">
            <div class="petwiz-image-pet">
                <image src="${createLink(controller: 'person', action: 'petImageHandler', id: name)}" width="200" height=auto />
            </div>
        </div>
        <div class="row">
            <div class="col l6 m6 m12">
                <div class="card-panel teal">
                    <h5>Nombre:${name}</h5>
                    <h5>Edad:${age}</h5>
                    <h5>Especie:${type}</h5>
                    <h5>Genero:${genre}</h5>
                </div>
            </div>
            <div class="col l6 m6 m12">

            </div>
            <div class="col l12 m12 m12">
                <ul class="collapsible" data-collapsible="accordion">
                    <li>
                        <div class="collapsible-header"><i class="material-icons">filter_drama</i>eventos</div>
                        <div class="collapsible-body">
                            <ul class="collection">
                                <li class="collection-item avatar">
                                    <img src="images/yuna.jpg" alt="" class="circle">
                                    <span class="title">Title</span>
                                    <p>First Line <br>
                                        Second Line
                                    </p>
                                    <a href="#!" class="secondary-content"><i class="material-icons">grade</i></a>
                                </li>
                                <li class="collection-item avatar">
                                    <i class="material-icons circle">folder</i>
                                    <span class="title">Title</span>
                                    <p>First Line <br>
                                        Second Line
                                    </p>
                                    <a href="#!" class="secondary-content"><i class="material-icons">grade</i></a>
                                </li>
                                <li class="collection-item avatar">
                                    <i class="material-icons circle green">insert_chart</i>
                                    <span class="title">Title</span>
                                    <p>First Line <br>
                                        Second Line
                                    </p>
                                    <a href="#!" class="secondary-content"><i class="material-icons">grade</i></a>
                                </li>
                                <li class="collection-item avatar">
                                    <i class="material-icons circle red">play_arrow</i>
                                    <span class="title">Title</span>
                                    <p>First Line <br>
                                        Second Line
                                    </p>
                                    <a href="#!" class="secondary-content"><i class="material-icons">grade</i></a>
                                </li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>

</main>

</body>
</html>