<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
		<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/organizaciones/adminOrganizaciones.js"></script>
		
		
		
		<section id="widget-grid">
			<div id="divActividad" class="row">
				<article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
					<div class="jarviswidget" id="jwActividad"
						data-widget-togglebutton="false" data-widget-deletebutton="false"
						data-widget-editbutton="false" data-widget-sortable="false">
						<header>
							<h2><b>Administración de Organizaciones</b></h2>
						<h2 id="adminActividad"></h2>
						</header>
						<div>
							<div class="widget-body-toolbar">
									<button id="btnPlus" type="button"
										class="btn btn-primary btn-sm">
										<i class="fa fa-user-plus"></i> Crear
									</button>

							</div>
							<div class="widget-body">
								<table id="dtOrganizacion"
									class="table table-striped table-bordered table-hover DTTT_selectable"
									cellspacing="0" width="100%" cellspacing="0" width="100%" onkeydown="return soloLetras(event)">
									
								</table>
							</div>
						</div>
					</div>
				</article>
			</div>

			<div id="divCrear" class="row" style="display: none">
				<article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
					<jsp:include page="organizacionAdd.jsp"></jsp:include>
				</article>
			</div>
			
			<!-- Modal -->
			<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			  <div class="modal-dialog" role="document">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h5 class="modal-title" id="exampleModalLabel">Ingrese el codigo</h5>
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			          <span aria-hidden="true">&times;</span>
			        </button>
			      </div>
			      <div class="modal-body">
						<form id="fmOrganizacionesCodigo" method="post" class="smart-form ">
								<label class="control-label">*Ingresa el codigo</label>
							    <label class="input form-control"> <i class="icon-prepend fa fa-list-alt"></i> 
							    <input
									type="number" id="codigoValidar" name="codigoValidar" placeholder="Codigo" onkeydown="return validarNumericos(event)" >
								</label>
						</form>			        
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
			        <button type="button" class="btn btn-primary" id="consultar">Consultar</button>
			      </div>
			    </div>
			  </div>
			</div>

		</section>
