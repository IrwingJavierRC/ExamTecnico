<div class="jarviswidget" id="wid-id-0" data-widget-togglebutton="false" data-widget-deletebutton="false" data-widget-editbutton="false"
	data-widget-sortable="false">
	<header>
		<span class="widget-icon"> <i class="fa fa-edit"></i></span> <input type="hidden" id="nombre" value="">

		<h2 id="nombreAcividad"></h2>
		
	</header>
	<div ondrop="drop(event)">
		<div class="jarviswidget-editbox"></div>
		<div class="widget-body ">
			<form id="fmOrganizaciones" method="post" class="smart-form ">
				<fieldset>
					<legend>
						<b>&nbsp <span class="glyphicon glyphicon-pencil"></span>&nbspDatos Generales
						</b>
					</legend>
				</fieldset>
				<fieldset>
					<div class="row">
						<section class="col col-md-6">
							<label class="control-label">*Nombre del Cliente </label>
						    <label class="input form-control"> <i class="icon-prepend fa fa-list-alt"></i> 
						    <input
								type="text" id="nombreO" name="nombreO" placeholder="Nombre del Cliente" onkeydown="return soloPermitidos(event)">
							</label>
						</section>
						
						<section class="col col-md-6">
							<label class="control-label">*Direccion</label>				    
						    <select id="direccion" name="direccion" style="width: 100%" class="form-control"></select>
						    
						</section>
					</div>
					<div class="row">
						<section class="col col-md-6">
							<label class="control-label">*Telefono </label>
						    <select id="telefono" name="telefono" style="width: 100%" class="form-control"></select>
						</section>
						
						<section class="col col-md-6">
							<label class="control-label">*Codigo</label>
						    <label class="input form-control"> <i class="icon-prepend fa fa-list-alt"></i> 
						    <input
								type="number" id="codigo" name="codigo" placeholder="Codigo" onkeydown="return validarNumericos(event)" >
							</label>
						</section>
					</div>
					<div class="row">
						<div class="col col-12">
							<section>
								<strong><br> <i>* Campos Obligatorios</i> </strong>
							</section>
						</div>
						
					</div>
				</fieldset>
				<div class="widget-body-toolbar">
					<div class="form-actions">
						<button id="btnCancel" type="button" class="btn btn-danger btn-sm">
							<i class="fa fa-arrow-left"></i> Cancelar
						</button>
						<button class="btn btn-primary btn-sm" id="btnSave" type="button">
							<i class="fa fa-save"></i> Guardar
						</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
