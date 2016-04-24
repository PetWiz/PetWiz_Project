<%@ page import="petwiz_project.Service" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<title>Crear Servicio</title>
	</head>
	<body>

	<main>
		<script type = "text/javascript">
			var _url = '${createLink(controller: 'index' , action:'logout')}?';
		</script>
		<div id="modal1" class="modal ">
			<g:form controller="service" action="saveService" enctype="multipart/form-data">
				<div class="container">
					<div class="row">
						<br>
						<div class="input-field col s12 m12 l12">
							<g:textField id="serv_name" class="validate" name="name" />
							<label for="serv_name" >Nombre de Servicio</label>
						</div>
					</div>
					<div class="row">
						<div class="input-field col s12 m12 l12">
							<g:field id="serv_address" type="text" class="validate" name="address" />
							<label for="serv_address" >Dirección</label>
						</div>
					</div>
					<div class="row">
						<div class="input-field col s12  m12 l12">
							<g:field id="serv_tel" type="number" class="validate" name="phone" />
							<label for="serv_tel">Teléfono</label>
						</div>
					</div>
					<div class="row">
						<div class="input-field col s12 m12 l12">
							<g:textField id="serv_desc" type="text" class="validate" name="description" />
							<label for="serv_desc" >Descripción</label>
						</div>
					</div>
					<div class="row">
						<div class="input-field col s12 m12 l12">
							<g:textField id="serv_web" type="text" class="validate" name="pagWeb" />
							<label for="serv_web" >Página Web</label>
						</div>
					</div>
					<div class="row">
						<div class="input-field col s12 m12 l12">
							<g:field id="serv_coord_x" type="number" class="validate" name="coordenate_x" />
							<label for="serv_coord_x" >Coordenada en X</label>
						</div>
					</div>
					<div class="row">
						<div class="input-field col s12 m12 l12">
							<g:field id="serv_coord_y" type="number" class="validate" name="coordenate_y" />
							<label for="serv_coord_y" >Coordenada en Y </label>
						</div>
					</div>
					<div class="row">
						<div class="input-field col s12 m12 l12">
							<select name="type">
								<option class="" value="" disabled selected>Tipo de Servicio</option>
								<option value="veterinaria" class="circle">Veterinaria</option>
								<option value="guarderia" class="circle">Guarderia</option>
								<option value="cuidadores" class="circle">Cuidadores</option>
								<option value="aseo" class="circle">Aseo</option>
								<option value="training" class="circle">Training</option>
								<option value="hospital" class="circle">Hospitales</option>
							</select>
						</div>
					</div>
					<div class="row">
						<div class="input-field col s10 m12 l12">
							<label for="imagen" >Imagen </label><br><br>
							<g:field id="imagen" type="file" class="validate" name="avatar" />
						</div>
					</div>
					<g:actionSubmit controller ="service" value="Crear Servicio" action="saveService" class="btn modal-action modal-close waves-effect waves-grey petwiz-teal" style="padding-top: 10px"/>

				</div>
			</g:form>
			<br>
		</div>
		<div class="container">
			<div class="row">
				<div class="col s12 l12 m12">
					<ul class="tabs ">
						<li class="tab col s3"><a class="active" href="#test1"><span class="font-teal hover-light"><i class="material-icons">local_pharmacy</i>Veterinarias</span></a></li>
						<li class="tab col s3"><a href="#test2"><span class="font-teal hover-light"><i class="material-icons">pets</i>Guarderias</span></a></li>
						<li class="tab col s3"><a href="#test3"><span class="font-teal hover-light"><i class="material-icons">face</i>Cuidadores</span></a></li>
						<li class="tab col s3"><a href="#test4"><span class="font-teal hover-light"><i class="material-icons">spa</i>Aseo</span></a></li>
						<li class="tab col s3"><a href="#test5"><span class="font-teal hover-light"><i class="material-icons">fitness_center</i>Training</span></a></li>
						<li class="tab col s3"><a href="#test6"><span class="font-teal hover-light"><i class="material-icons">local_hospital</i>Hospitales</span></a></li>
					</ul>
				</div>
			</div>
		</div>
		<div id="test1" class="row">
			<div class="col s12 m12 l12">
				<g:each var="item" in="${petwiz_project.Service?.findAllByServiceType("veterinaria")}">
					<petwiz:showServ service="${item}" edit="${false}"/>
				</g:each>
			</div>
		</div>
		<div id="test2" class="row">
			<div class="col s12 m12 l12">
				<g:each var="item" in="${petwiz_project.Service?.findAllByServiceType("guarderia")}">
					<petwiz:showServ service="${item}" edit="${false}"/>
				</g:each>
			</div>
		</div>
		<div id="test3" class="row">
			<div class="col s12 m12 l12">
				<g:each var="item" in="${petwiz_project.Service?.findAllByServiceType("cuidadores")}">
					<petwiz:showServ service="${item}" edit="${false}"/>
				</g:each>
			</div>
		</div>
		<div id="test4" class="row">
			<div class="col s12 m12 l12">
				<g:each var="item" in="${petwiz_project.Service?.findAllByServiceType("aseo")}">
					<petwiz:showServ service="${item}" edit="${false}"/>
				</g:each>
			</div>
		</div>

		<div id="test5" class="row">
			<div class="col s12 m12 l12">
				<g:each var="item" in="${petwiz_project.Service?.findAllByServiceType("training")}">
					<petwiz:showServ service="${item}" edit="${false}"/>
				</g:each>
			</div>
		</div>
		<div id="test6" class="row">
			<div class="col s12 m12 l12">
				<g:each var="item" in="${petwiz_project.Service?.findAllByServiceType("hospital")}">
					<petwiz:showServ service="${item}" edit="${false}"/>
				</g:each>
			</div>
		</div>
		<div class="col s12 m6 l3">
			<div class="card small-btn hoverable " style="margin-left: 27px">
				<br><span class="font-teal" style="margin-left: -20px">Añadir Servicio</span>
				<a  href="#modal1" class="modal-trigger btn-floating btn-large waves-effect waves-light petwiz-blue-add"><i class="material-icons">add</i></a>
			</div>
		</div>

</main>

</body>
</html>
