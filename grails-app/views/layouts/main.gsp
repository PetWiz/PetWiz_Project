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
<body onload="${pageProperty(name:'body.onload')};">

<body>

<header>
	<!-- Nav -->
	<!------------------- lateral Nav Bar---------------------------->
	<div class="col s2 m1 l1 left">

		<ul id="nav-lat" class="side-nav petwiz-smoke petwiz-font font-white fixed z-depth-5">
			<div class="petwiz-image-box" id="facebook-session">
				<img class="petwiz-fb-img"/>
				<p class="petwiz-name"></p>
			</div>
			<ul class="collapsible" data-collapsible="accordion">
				<li>
					<div class="collapsible-header pet"><i class="material-icons">filter_drama</i>PetWiz</div>
					<div class="collapsible-body">
						<ul class="petwiz-blue-dark">
							<li>
								<a href="#" id="loginlat">
									<img src="https://s3.amazonaws.com/codecademy-content/projects/make-a-website/lesson-4/facebook.svg"
										 width=20px height="auto" style="padding-top: 15px; margin-left: 55px"/>
								</a>
							</li>
						<sec:ifAllGranted roles="ROLE_USER">
							<li class="menulat-item-da"><a href="${createLink(uri:'/person/home.gsp')}"><i class="material-icons font-white"style="padding-top: 20px">home</i></a></li></span>
							<!-- Dropdown Trigger -->
							<a class='dropdown-button menulat-item-da' href='#' data-activates='events-lat'><span class="font-white">Eventos</span></a>
							<!-- Dropdown Structure -->
							<ul id="events-lat" class="dropdown-content drop-menu">
								<li><a href="${createLink(uri:'/person/myevents.gsp')}" class="" style="padding-top: 20px">Propios</a></li>
								<li><a href="${createLink(uri:'/person/services.gsp')}" class="" style="padding-top: 20px">Servicios</a></li>
							</ul>
							</sec:ifAllGranted>
							<sec:ifNotLoggedIn>
								<li class="menulat-item-da"><a href="${createLink(uri:'/index/index.gsp')}" class=""><span class="font-white">Entrar</span></a></li>
							</sec:ifNotLoggedIn>
							<li class="menulat-item-da"><a href="${createLink(uri:'/index/contact.gsp')}" class=""><span class="font-white">Contacto</span></a></li>
							<li class="menulat-item-da"><a href="${createLink(uri:'/index/PetWizTeam.gsp')}" class=""><span class="font-white">Nosotros</span></a></li>
						</ul>
					</div>
				</li>
				<li>

					<div class="collapsible-header pet"><i class="material-icons">insert_emoticon</i>Cuenta</div>
					<div class="collapsible-body">
						<ul class="petwiz-blue-dark"><span class="font-white">
						<sec:ifAllGranted roles="ROLE_USER">
							<li class="menulat-item-da"><a href=""><i class="material-icons circle font-white petwiz-royale">perm_identity</i><span class="title font-white left-align">Mi perfil</span></a></li>
							<li class="menulat-item-da"><a href="${createLink(uri:'/person/mypets.gsp')}"><i class="material-icons circle font-white petwiz-royale">pets</i><span class="title font-white left-align">Mis Mascotas</span></a></li>
							<li class="menulat-item-da"><a href=""><i class="material-icons circle font-white petwiz-royale">input</i><span class="title font-white left-align">Mis Eventos</span></a></li>
						</sec:ifAllGranted>
						<sec:ifNotLoggedIn>
							<li class="menulat-item-da"><a href="${createLink(uri:'/index/index.gsp')}"><i class="material-icons circle font-white petwiz-royale">pets</i><span class="title font-white left-align">Entrar</span></a></li></span>
						</sec:ifNotLoggedIn>
						</ul>
					</div>
				</li>
				<li><a href="${createLink(uri:'/index/help.gsp')}" class="collapsible-header pet"><span class=" font-white"><i class="material-icons">help</i>help</span></a></li>
			</ul>

			<ul id='dropdown1' class='dropdown-content'>
				<sec:ifAllGranted roles="ROLE_USER">
				<li class="menulat-item-main avatar"><i class="material-icons circle icon-color">perm_identity</i><span class="title left-align">Mi perfil</span></li>
				</sec:ifAllGranted>
			</ul>
		</ul>
	</div>

	<div class="navbar-fixed">
		<nav class="nav-wrapper petwiz-blue petwiz-font">
			<div class="row center">
				<!-------------------------Nav Responsive menu--------------------------->
				<a href="#" data-activates="nav-lat" class="button-collapse"><i class="material-icons">menu</i></a>
				<a href="" class="brand-logo"><img src="https://41.media.tumblr.com/4255698e1f0bf60cc578b3e41e1102c2/tumblr_o3y01dJzcZ1solvhmo1_400.png" width=110px height="auto"/></a>
				<div class="col l12 m9 hide-on-med-and-down" style="margin-top: 10px; padding-left: 4%">
					<a href="#" id="login" class="btn face-log">
						<img src="https://s3.amazonaws.com/codecademy-content/projects/make-a-website/lesson-4/facebook.svg"
							 width=20px height="auto" style="padding-top: 8px"/>
					</a>
				</div>
			</div>
		</nav>
	</div>
</header>


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
					<a href="https://www.facebook.com/profile.php?id=100011386584112&fref=ts">
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
<asset:javascript src="facelogin.js"/>

</body>

</body>




</html>