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
	<script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
	<link rel="shortcut icon" href="${createLinkTo(dir:'images',file:'iconopw.ico')}" type="image/x-icon" />
	<!--<asset:javascript src="facelogout.js"/>-->
	<asset:javascript src="facelogin.js"/>
	<g:layoutHead />
</head>
<body onload="${pageProperty(name:'body.onload')}">
<header>
	<!-- Nav -->
	<script>
		(function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id)) return;
			js = d.createElement(s); js.id = id;
			js.src = "//connect.facebook.net/es_LA/sdk.js#xfbml=1&version=v2.6";
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));

		function logout(){
			window.location.href= '${createLink(controller: 'index' , action:'logout')}';
		}
	</script>
    <div id="fb-root"></div>
	<!------------------- lateral Nav Bar---------------------------->
	<div class="col s2 m1 l1 left">
		<ul id="nav-lat" class="side-nav petwiz-smoke petwiz-font font-white fixed z-depth-5">
			<div class="petwiz-image-box" id="facebook-session">
				<img class="petwiz-fb-img" style="width: 150px; height: 150px"/>
				<p class="petwiz-name" style="font-family: Verdana; font-size: 15px"></p>
			</div>
			<ul class="collapsible" data-collapsible="accordion">
				<li>
					<div class="collapsible-header pet">
						<i class="material-icons">filter_drama</i>PetWiz
					</div>
					<div class="collapsible-body">
						<div class="col s12 m12">
							<ul class="collapsible petwiz-blue" data-collapsible="expandable">
								<sec:ifAllGranted roles="ROLE_USER">
									<li>
										<div class="collapsible-header petco menulat-item-da">
											<a href="${createLink(controller: 'person' , action:'home')}">
												<i class="material-icons font-white" style="padding-left: 50px">home</i>
											</a>
										</div>
									</li>
									<li>
										<div class="collapsible-header petco menulat-item-da">
											<a href="${createLink(controller: 'person' , action:'events')}">
												<span class="font-white">Eventos</span>
											</a>
										</div>
									</li>
									<li>
										<div class="collapsible-header petco menulat-item-da">
											<a href="${createLink(controller: 'person' , action:'services')}">
												<span class="font-white">Servicios</span>
											</a>
										</div>
									</li>
							<!--		<li>
										<div class="collapsible-header petco petwiz-blue" style="padding-left: 100px;">
											<i class="material-icons" ></i>Eventos</div>
										<div class="collapsible-body">
											<ul class="petwiz-blue">
												<li class="menulat-item-co"><a href="${createLink(controller: 'person' , action:'myevents')}">Propios</a></li>
												<li class="menulat-item-co"><a href="${createLink(controller: 'person' , action:'services')}">Servicios</a></li>
											</ul>
										</div>
									</li>-->
								</sec:ifAllGranted>
								<sec:ifAllGranted roles="ROLE_ADMIN">
									<li class="menulat-item-da"><a href="${createLink(controller: 'service' , action:'service')}" class=""><span class="font-white">Crear Servicio</span></a></li>
								</sec:ifAllGranted>

								<sec:ifNotLoggedIn>
									<li class="menulat-item-da"><a href="${createLink(controller: 'index' , action:'index')}" class=""><span class="font-white">Entrar</span></a></li>
								</sec:ifNotLoggedIn>
								<li>
									<div class="collapsible-header petco menulat-item-da">
										<a href="${createLink(controller: 'index' , action:'contact')}">
											<span class="font-white">Contacto</span>
										</a>
									</div>
								</li>
								<li>
									<div class="collapsible-header petco menulat-item-da">
										<a href="${createLink(controller: 'index' , action:'PetWizTeam')}">
											<span class="font-white">Nosotros</span>
										</a>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</li>
				<li>

					<div class="collapsible-header pet"><i class="material-icons">insert_emoticon</i>Cuenta</div>
					<div class="collapsible-body">
						<ul class="petwiz-blue-dark"><span class="font-white">
						<sec:ifAllGranted roles="ROLE_USER">
							<li class="menulat-item-da"><a href="${createLink(controller:'person', action:'myfriends')}"><i class="material-icons circle font-white petwiz-royale">perm_identity</i><span class="title font-white left-align">Mi perfil</span></a></li>
							<li class="menulat-item-da"><a href="${createLink(controller:'person', action:'mypets')}"><i class="material-icons circle font-white petwiz-royale">pets</i><span class="title font-white left-align">Mis Mascotas</span></a></li>
							<li class="menulat-item-da"><a href="${createLink(controller:'person', action:'myevents')}"><i class="material-icons circle font-white petwiz-royale">input</i><span class="title font-white left-align">Mis Eventos</span></a></li>
						</sec:ifAllGranted>
						<sec:ifNotLoggedIn>
							<li class="menulat-item-da"><a href="${createLink(controller:'index', action:'index')}"><i class="material-icons circle font-white petwiz-royale">pets</i><span class="title font-white left-align">Entrar</span></a></li></span>
						</sec:ifNotLoggedIn>
						</ul>
					</div>
				</li>
				<li><a href="${createLink(controller:'index', action:'help')}" class="collapsible-header pet"><span class=" font-white"><i class="material-icons">help</i>help</span></a></li>

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
				<sec:ifAllGranted roles="ROLE_USER">
					<a href='#' id='logout' class='btn face-log'>Salir</a>
				</sec:ifAllGranted>
				<sec:ifNotLoggedIn>
					<a href="${createLink(controller:'index', action:'index')}"  class='btn face-log'>Entrar</a>
				</sec:ifNotLoggedIn>
				<!--		<img src="https://s3.amazonaws.com/codecademy-content/projects/make-a-website/lesson-4/facebook.svg"
							 width=20px height="auto" style="padding-top: 8px"/>
					</a>-->

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
				<p class="grey-text text-lighten-4">Esta aplicación es la mejor para que tu y tus mascotas puedan compartir los mejores momentos. Aquí encontrarás multiples eventos y servicios a los cuáles tu mascota podrá asistir y disfrutar para que tu puedas devolver todo el cariño que el te brinda.</p>
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


<asset:javascript src="materialize.js"/>
<asset:javascript src="init.js"/>

</body>
</html>
