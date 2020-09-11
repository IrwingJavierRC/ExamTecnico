var table;
$(function() {
	console.log('inicia JS');
	$("#dtOrganizacion").html(htmlTabla())
	initDataTable();
	initEVentos();
});

function initDataTable(){
	$.ajax({
        async: true,
        method : "POST",
		url : ctx + '/clienteController/getClientes',
        
        success: function (data) {
            table = $('#dtOrganizacion').DataTable({
                "searching": true,
                fixedHeader: true,
                destroy: true,
                data: data,
                columns: [
                	{ data: "idExterno" },
                	{ data: "nombre" }
                ],
                "sDom": "<'dt-toolbar'<'col-xs-12 col-sm-6 hidden-xs'l><'col-sm-6 col-xs-12 hidden-xs'<'toolbar'>>r>"
                    + "t"
                    + "<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>",
                deferRender: true,
                "pageLength": 5,
                "language": {
                    "url": "//cdn.datatables.net/plug-ins/1.10.19/i18n/Spanish.json"
                }

            });

            $('#dtOrganizacion tbody').on(
        			'click',
        			'tr',
        			function() {
        				if ($(this).hasClass('selected')) {
        					$(this).removeClass('selected');
        				} else {
        					$('#dtOrganizacion').DataTable().$('tr.selected').removeClass(
        							'selected');
        					$(this).addClass('selected');
        				}
        			});
            $('#dtOrganizacion tbody').on('click', 'tr', function() {
        		$(this).addClass('selected');
        		
        		var row = $('#dtOrganizacion').DataTable().row('.selected').data();
        		if (row) {
        			$('#exampleModal').modal('show');
        			$('#codigoValidar').val("");
        			$("input").attr("readonly",false);
        		}else {
        			$.smallBox({
        				title : "Información",
        				content : "<i>Debe seleccionar por lo menos un elemento</i>",
        				color : "#c79121",
        				timeout : 4000,
        				icon : "fa fa-info-circle swing animated"
        			});
        		}
        	});

        }
    });
}
function initEVentos(){
	
	$('#btnPlus').click(function() {

		$('#divActividad').hide('fast',function() {
			$('#divCrear').show('fast',function() {
				$('#nombreAcividad').html('<b>Registro de Cliente </b>');
			});
        });
		
		$("input").attr("readonly",false);
		
		$("#btnSave").show();
		
		validacion();
	});
	
	llenaCombo("#direccion", ctx + '/clienteController/getDireccion', "idDireccion", "nombre");
	llenaCombo("#telefono", ctx + '/clienteController/getTelefono', "idTelefono", "numero");
	
	$('#fmOrganizaciones')[0].reset();
	$('#fmOrganizaciones').bootstrapValidator('destroy');
	
	$('#codigo').keypress(function (event) {
      if (event.which < 48 || event.which > 57 || this.value.length === 4) {
        return false;
      }
    });
	
	$('#codigoValidar').keypress(function (event) {
      if (event.which < 48 || event.which > 57 || this.value.length === 4) {
        return false;
      }
    });
	
	$('#btnCancel').click(function() {
		$('#divCrear').hide('fast', function() {
			$('#divActividad').show('fast', function() {
				$('#fmOrganizaciones')[0].reset();
				$('#fmOrganizaciones').bootstrapValidator('destroy');

				validacion();
			});
		});
	});
	
	$('#btnSave').click(function() {

		$('#fmOrganizaciones').data('bootstrapValidator').validate();
		var n = $('#fmOrganizaciones').data('bootstrapValidator').isValid();
		if (n) {
			saveOrganizacion();
		} else {
			validacion();
		}
	});
	
	
	
	$("#consultar").click(function(){
		editAOrganizacion();
		
	})
	
}
function htmlTabla() {
    var html = "";
    html += '<thead >'
    html += '    <tr>'
    html += '        <th>IdExterno</th>'
    html += '        <th>Nombre</th>'
    html += '    </tr>'
    html += '</thead>';

    return html;
}
function validacion() {
	$('#fmOrganizaciones')
			.bootstrapValidator(
					{
						live : 'enabled',
						submitButtons : 'button[id="btnSave"]',
						message : 'Valor invalido',
						// excluded: ':disabled',
						fields : {
							nombreO : {
								group : '.col-md-6',
								selector : '#nombreO',
								validators : {
									notEmpty : {
										message : 'El Nombre es obligatorio.'
									}
								}
							},
							direccion : {
								group : '.col-md-6',
								selector : '#direccion',
								validators : {
									notEmpty : {
										message : 'La Direccion es obligatoria.'
									}
								}
							},
							telefono : {
								group : '.col-md-6',
								selector : '#telefono',
								validators : {
									notEmpty : {
										message : 'El Telefono es obligatorio.'
									}
								}
							},
							codigo : {
								group : '.col-md-6',
								selector : '#codigo',
								validators : {
									notEmpty : {
										message : 'El Codigo es obligatorio.'
									}
								}
							}
							

						}
					});
}
function saveOrganizacion(){
	$('#btnSave').prop("disabled", true);
	
	var json = {
			idExterno:idExterno(),
			nombre:$("#nombreO").val(),
			direccion : $("#direccion").val(),
			codigo:$("#codigo").val(),
			telefono : $("#telefono").val(),
		}
	
	$.ajax({
		type : "POST",
		url : ctx + '/clienteController/addCliente',
		data : json ,
		success : function(data) {
			showOkMessage('¡Operación Exitosa!', 'El cliente se Guardo correctamente. <b>');
			
			if (table) {
				table.destroy();
				table = null;
	            $("#dtOrganizacion").empty();
	            $("#dtOrganizacion").html(htmlTabla());
	            initDataTable();
	        } else {
	            $("#dtOrganizacion").html(htmlTabla());
	            initDataTable();
	        }
			
			$('#divCrear').hide('fast', function() {
				$('#divActividad').show('fast', function() {
				});
			});
			$('#btnSave').prop("disabled", false);
			$('#fmOrganizaciones').bootstrapValidator('destroy');
		}
	});
}
function idExterno(){
	var cadenaNombre = $("#nombreO").val();
	var cadenaTelefono = $("#telefono").val();
	
	return cadenaNombre.substr(0, 4) + cadenaTelefono.substr(cadenaTelefono.length - 4)+"NE"+numeroAleatorio(0001,9999);
}
function numeroAleatorio(min, max) {
  return Math.round(Math.random() * (max - min) + min);
}

function editAOrganizacion() {
	var row = $('#dtOrganizacion').DataTable().row('.selected').data();
		if(row.codigo == $('#codigoValidar').val()){
			
			$('#exampleModal').modal('hide');
			
			$('#nombreO').val(row.nombre);
			$('#direccion').val(row.direccion.idDireccion);
			$('#telefono').val(row.telefono.idTelefono);
			$('#codigo').val(row.codigo);

			
			$('#divCrear').show('fast', function() {
				$('#divActividad').hide('fast', function() {
					
				});
			});
			$('#nombreAcividad').html('<b>Informacion de Organizacion</b>');	
			$("input").attr("readonly",true);
			$("#btnSave").hide()
				
		}else{
			$.smallBox({
				title : "Información",
				content : "<i>El codigo ingresado es incorrecto</i>",
				color : "#c79121",
				timeout : 4000,
				icon : "fa fa-info-circle swing animated"
			});
		}
	
}






function llenaCombo(selector, url, value, text){
    $.ajax({
        async: true,
        type: 'GET',
        url: url,
        dataType: 'json',
        success: function (data) {
        	var html = '';
        	$.each(data, function(i, item){
        		html += '<option value="' + item[value] + '">' + item[text] + '</option>';
        	});
        	$(selector).append(html);
        }
    });
}

