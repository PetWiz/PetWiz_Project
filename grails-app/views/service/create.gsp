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
		<!-- Modal Structure -->
		<div id="modal1" class="modal small">
			<div class="modal-content font-teal">
				<g:form action="muestra">
					<div class="row">
						<div class="input-field col s12 m12 l12">
							<input id="serv_name" type="text" class="validate" name="name">
							<label for="serv_name" >Nombre de Servicio</label>
						</div>
					</div>
					<div class="row">
						<div class="input-field col s12 m12 l12">
							<input id="serv_address" type="text" class="validate" name="address">
							<label for="serv_address" >Dirección</label>
						</div>
					</div>
					<div class="row">
						<div class="input-field col s12  m12 l12">
							<input id="serv_tel" type="text" class="validate" name="phone">
							<label for="serv_tel">Telefono</label>
						</div>
					</div>
					<div class="row">
						<div class="input-field col s12 m12 l12">
							<input id="serv_desc" type="text" class="validate" name="description">
							<label for="serv_desc" >Descripción</label>
						</div>
					</div>
					<div class="row">
						<div class="input-field col s12 m12 l12">
							<input id="serv_coord_x" type="text" class="validate" name="coordenate_x">
							<label for="serv_coord_x" >Coordenada en X</label>
						</div>
					</div>
					<div class="row">
						<div class="input-field col s12 m12 l12">
							<input id="serv_coord_y" type="text" class="validate" name="coordenate_y">
							<label for="serv_coord_y" >Coordenada en Y </label>
						</div>
					</div>
					<g:uploadForm action="upload_avatar">
					<label for="avatar">Avatar (16K)</label>
					<input type="file" name="avatar" id="avatar" />
					<!--<input type="submit" class="buttons" value="Upload" />-->
				</g:uploadForm>
					<div class="row">
						<div class="input-field col s12 m12 l12">
							<select name="genre">
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
					<button class="btn modal-action modal-close waves-effect waves-grey petwiz-teal" name="submit" >Crear Servicio
						<i class="material-icons right">send</i>
					</button>
				</g:form>
			</div>
		</div>
				<div class="col s12 m6 l3">
					<div class="card small-btn hoverable">
						<br><span class="font-teal" style="margin-left: -20px">Añadir Servicio</span>
						<a  href="#modal1" class="modal-trigger btn-floating btn-large waves-effect waves-light petwiz-blue-add"><i class="material-icons">add</i></a>
					</div>
				</div>

			</div>
		</div>

	</main>
	</body>
</html>
