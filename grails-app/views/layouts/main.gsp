<html>
<head>
	<title><g:layoutTitle default="PetWizPage" /></title>

	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<asset:stylesheet src="materialize.min.css" media="screen,projection"/>
	<asset:stylesheet src="style.css"/>
	<link href='https://fonts.googleapis.com/css?family=Open+Sans:800italic' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Lato:900' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Vollkorn:700' rel='stylesheet' type='text/css'>

	<g:layoutHead />
</head>
<body onload="${pageProperty(name:'body.onload')}">

<body>
<header>
	<!-- Nav -->
	<!------------------- lateral Nav Bar---------------------------->
	<div class="col s2 m1 l1 left">

		<ul id="nav-lat" class="side-nav petwiz-blue petwiz-font font-white fixed z-depth-5">
			<div class="petwiz-image-box"></div>

			<ul class="collapsible" data-collapsible="accordion">
				<li>
					<div class="collapsible-header"><i class="material-icons">filter_drama</i>PetWiz</div>
					<div class="collapsible-body">
						<ul class="petwiz-blue">
							<li><a href="" class="menulat-item"><span class="font-white"><i class="material-icons left">home</i>Home</span></a></li>
							<li><a href="" class=""><span class="font-white">Perfil</span></a></li>
							<li><a href="" class=""><span class="font-white">Mascotas</span></a></li>
							<li><a href="" class=""><span class="font-white">Eventos</span></a></li>
							<li><a href="" class=""><span class="font-white">Contacto</span></a></li>
						</ul>
					</div>
				</li>
				<li>
					<div class="collapsible-header"><i class="material-icons">place</i>Cuenta</div>
					<div class="collapsible-body">
						<ul class="petwiz-blue"><span class="font-white">
							<li class="menulat-item-da"><a class="modal-trigger" href="#modal1"><i class="material-icons circle font-white icon-color">add</i><span class="title font-white left-align">Añadir Mascota</span></a></li></span>
						</ul>
					</div>
				</li>
			</ul>
			<li><a href="" class=""><span class="font-white"><i class="material-icons left">help</i>Help</span></a></li>
			<ul id='dropdown1' class='dropdown-content'>
				<li class="menulat-item-main avatar"><i class="material-icons circle icon-color">perm_identity</i><span class="title left-align">Mi perfil</span></li>
			</ul>
		</ul>
	</div>

	<div class="navbar-fixed">
		<nav class="nav-wrapper petwiz-blue petwiz-font">
			<div class="row">
				<!-------------------------Nav Responsive menu--------------------------->
				<a href="#" data-activates="nav-lat" class="button-collapse"><i class="material-icons">menu</i></a>
				<div class="left">
					<a href="" class="brand-logo" style="padding-left: 7px"><img src="https://41.media.tumblr.com/4255698e1f0bf60cc578b3e41e1102c2/tumblr_o3y01dJzcZ1solvhmo1_400.png" width=110px height="auto"/></a>
				</div>
				<div class="col s9 m1 l11 right ">
					<ul class="hide-on-med-and-down center">
						<li class="col s2 m1 l1 menu-item menu-item-active"><a href="${createLink(uri:'/person/home.gsp')}"><i class="material-icons center">home</i></a></li>
						<li class="col s2 m1 l2 menu-item "><a href="">Mascotas</a></li>
						<li class="col s2 m1 l2 menu-item "><a href="" class="dropdown-button" data-activates="events" data-beloworigin="true">Eventos</a></li>
						<li class="col s2 m1 l2 menu-item "><a href="">Contacto</a></li>
						<li class="col s2 m1 l2 menu-item "><a href="${createLink(uri:'/index/PetWizTeam.gsp')}">Nosotros</a></li>
						<li class="col s2 m1 l1 menu-item "><a><i class="material-icons left">help</i></a></li></li>
					</ul>
				</div>
				<ul id="events" class="dropdown-content drop-menu">
					<li><a href="#!" class="navdrop">Propios</a></li>
					<li><a href="${createLink(uri:'/person/services.gsp')}" class="navdrop">Servicios</a></li>
				</ul>

			</div>

		</nav>
	</div>
</header>

<!-- Modal Structure -->
<div id="modal1" class="modal">
	<div class="modal-content">
		<form>
			<div class="row">
				<div class="input-field col s12 m8">
					<input id="pet_name" type="text" class="validate">
					<label for="pet_name" >Nombre de Mascota</label>
				</div>
			</div>
			<div class="row">
				<div class="input-field col s12  m8 ">
					<input id="pet_type" type="text" class="validate">
					<label for="pet_type">Tipo</label>
				</div>
			</div>
			<div class="row">
				<div class="input-field col s12 m8 ">
					<select class="icons ">
						<option class="" value="" disabled selected>Escoja el genero</option>
						<option value="pet_genre" data-icon="/PetWiz/assets/masc.png" class="circle">Masculino</option>
						<option value="pet_genre" data-icon="/PetWiz/assets/Femenino.png" class="circle">Femenino</option>
					</select>
					<label>Genero de la Mascota</label>
				</div>
			</div>
			<div class="row">
				<div class="input-field col s12 m8 ">
					<input type="date" class="datepicker">
					<label>Edad de la Mascota</label>
				</div>
			</div>

		</form>

	</div>
	<div class="modal-footer">
		<div class="col s12 m8 ">
			<button class="btn modal-action modal-close waves-effect waves-light right petwiz-teal" type="submit" name="action">Crear Mascota
				<i class="material-icons right">send</i>
			</button>
		</div>
	</div>
</div>

<g:layoutBody/>

<footer class="footer-copyright petwiz-blue">
	<div class="container">
		<div class="row">
			<div class="col l6 s12">
				<h5 class="white-text petwiz-font">PetWiz Info</h5>
				<p class="grey-text text-lighten-4">Esta apliación es la mejor para que tu y tus mascotas puedan compartir los mejores momentos. Aquí encontrarás multiples eventos y servicios a los cuáles tu mascota podrá asistir y disfrutar para que tu puedas devolver todo el cariño que el te brinda.</p>
			</div>
			<div class="col">
				<h5 class="col white-text">Unete:</h5>
			</div>
			<ul class="col petwiz-conn-ico-container">
				<li class="petwiz-conn-ico inverse right">
					<a href="http://www.twitter.com/petwiz_2016">
						<img src="https://s3.amazonaws.com/codecademy-content/projects/make-a-website/lesson-4/twitter.svg" width=40px height="auto"/>
					</a>
				</li>
				<li class="petwiz-conn-ico inverse right">
					<a href="https://www.instagram.com/petwizweb/">
						<img src="https://s3.amazonaws.com/codecademy-content/projects/make-a-website/lesson-4/instagram.svg"
							 width=40px height="auto"/>
					</a>
				</li>
				<li class="petwiz-conn-ico inverse right">
					<a href="">
						<img src="https://s3.amazonaws.com/codecademy-content/projects/make-a-website/lesson-4/facebook.svg"
							 width=40px height="auto"/>
					</a>
				</li>
			</ul>
		</div>


	</div>
</footer>


<script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<asset:javascript src="materialize.js"/>
<asset:javascript src="init.js"/>
</body>

</body>




</html>