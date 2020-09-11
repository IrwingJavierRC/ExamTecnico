$.fn.dataTable.ext.errMode = 'alert';
var breakpointDefinition = {
	tablet : 1024,
	phone : 480,
	desktop : 1260
};

// configuracion general de los DataTable

// valores de la opcion "dom", orden en el que se muestra cada seccion
// The built-in table control elements in DataTables are:
//
// B - buttons
// l - length changing input control
// f - filtering input
// t - The table!
// i - Table information summary
// p - pagination control
// r - processing display element
// W - Autofilter

// Further to these options, you can also specify additional div elements to be inserted into the document, which can be used for styling / nesting of
// the control elements. To add tags, the following syntax is expected:
//
// < and > - div element
// <"class" and > - div with a class
// <"#id" and > - div with an ID
// <"#id.class" and > - div with an ID and a class
// ejemplo
/*
 * Results in: <div class="top"> {information} </div> {processing} {table} <div class="bottom"> {filter} {length} {pagination} </div> <div
 * class="clear"></div>
 */
/*
 * $('#example').dataTable( { "dom": '<"top"i>rt<"bottom"flp><"clear">' } );
 */

var dataTableES = {
	"sProcessing" : "Procesando...",
	"sLengthMenu" : "Mostrar _MENU_",
	"sZeroRecords" : "No se encontraron resultados",
	"sEmptyTable" : "Ningún dato disponible en esta tabla",
	"sInfo" : "Del _START_ al _END_ de _TOTAL_",
	"sInfoEmpty" : "0 registros",
	"sInfoFiltered" : "(de _MAX_ registros)",
	"sInfoPostFix" : "",
	"sSearch" : "Buscar:",
	"sUrl" : "",
	"sInfoThousands" : ",",
	"sLoadingRecords" : "Cargando...",
	"oPaginate" : {
		"sFirst" : "<<",
		"sLast" : ">>",
		"sNext" : ">",
		"sPrevious" : "<"
	},
	"oAria" : {
		"sSortAscending" : ": Activar para ordenar la columna de manera ascendente",
		"sSortDescending" : ": Activar para ordenar la columna de manera descendente"
	}
};

// ver explicacion arriba
var formatoConFiltro = '<"top" ' + '<"row"  ' + '<"col col-sm-12 col-md-4 col-lg-4"i> ' + '<"col col-sm-12 col-md-4 col-lg-4"p> '
		+ '<"col col-sm-12 col-md-4 col-lg-4 divCenter dataTables_length"l B> ' + '> ' + '<"row"  ' + '<"col col-md-12"W> ' + '> <"clear">' + '>  ' + 't '
		+ '<"bottom"' + '<"row"  ' + '<"col col-sm-12 col-md-4 col-lg-4"i> ' + '<"col col-sm-12 col-md-4 col-lg-4"p> '
		+ '<"col col-sm-12 col-md-4 col-lg-4 divCenter dataTables_length" B l> ' + '> ' + '>';

var formatoSinFiltro = 
	'<"top" ' 
//	+ '<"row"  ' 
//	+ '	<"col col-sm-12 col-md-3 col-lg-4"i> ' 
//	+ '	<"col col-sm-12 col-md-6 col-lg-4"p> '
//	+ '	<"col col-sm-12 col-md-3 col-lg-4 divCenter dataTables_length"l B> ' 
//	+ '> ' 
	+ '> ' 
	+ 't ' 
	+ '<"bottom"' 
	+ '	<"row"  '
	+ '		<"col col-xs-4 col-sm-2 col-md-2 col-lg-4" i > ' 
	+ '		<"col col-xs-8 col-sm-5 col-md-5 col-lg-4" p > '
	+ '		<"col col-xs-6 col-sm-3 col-md-3 col-lg-2 divCenter " B > ' 
	+ '		<"col col-xs-6 col-sm-2 col-md-2 col-lg-2 divCenter " l > ' 
	+ '	> ' 
	+ '>';


var formatoSinFiltroSinPaginacion = 
	'<"top" ' 
//	+ '<"row"  ' 
//	+ '	<"col col-sm-12 col-md-3 col-lg-4"i> ' 
//	+ '	<"col col-sm-12 col-md-6 col-lg-4"p> '
//	+ '	<"col col-sm-12 col-md-3 col-lg-4 divCenter dataTables_length"l B> ' 
//	+ '> ' 
	+ '> ' 
	+ 't ' 
	+ '<"bottom"' 
	+ '<"row"  '
	+ '	<"col col-sm-12 col-md-3 col-lg-4"> ' 
	+ '	<"col col-sm-12 col-md-6 col-lg-4"> '
	+ '	<"col col-sm-12 col-md-3 col-lg-4 divCenter dataTables_length"B> ' 
	+ '> ' 
	+ '>';

var formatoConFiltroYPaginacionAbajo = '<"top" ' 
		+ '<"dt-toolbar-header"  ' 
		+ '<"col col-sm-12 col-md-12 col-lg-12"W> ' 
		+ '> <"clear">' + '>  ' 
		+ 't '
		+ '<"dt-toolbar-footer"  ' 
		+ '<"col col-sm-12 col-md-3 col-lg-4 divCenter dataTables_length"B > ' 
		+ '<"col col-sm-12 col-md-4 col-lg-4"p > '
		+ '<"col col-sm-12 col-md-2 col-lg-2 divCenter dataTables_length"l > ' 
		+ '<"col col-sm-12 col-md-2 col-lg-2"i> ' 
		+ '>';

var dataTableBotones = [
// {
// extend: 'copy',
// text: 'Copiar',
// exportOptions: {
// modifier: {
// page: 'current'
// }
// }
// },
// 'print',
'excel', 'csv', 'pdf' ];

var dataTableBotones1 = [ {
	extend : 'excel',
	title : 'definir.nombrearchivo',
	exportOptions : {
		columns : "thead th:not(.noExport)"
	}
} ];

// formato = "<<'col-sm-6 col-xs-12 hidden-xs'><'col-sm-6 col-xs-12 hidden-xs'<'toolbar'>>r>"
// + "t"
// + "<'dt-toolbar-footer'<'col-sm-3 col-xs-12'i><'col-sm-6 col-xs-12 divCenter'p><'col-sm-3 col-xs-12'l>>";

// TODO poner todas las opciones disponibles con sus posibles valores
$.extend($.fn.dataTable.defaults, {
	language : dataTableES,
	destroy : true,
	autoWidth : true,
	// searching: true,
	// ordering: true,
	// scrollY: false,
	// scrollX: false,
	processing : true,
	paging : true,
	aLengthMenu : [ [ 5, 10, 15, 25, 50, -1 ], [ 5, 10, 15, 25, 50, "Todo" ] ],
	iDisplayLength : 10,
	dom : formatoConFiltroYPaginacionAbajo,
	buttons : dataTableBotones,

// ejemplo de ordenamiento
// "aaSorting" : [ [ 0, 'asc' ], [ 1, 'asc' ], [ 2, 'asc' ], [ 4, 'asc' ], [ 5, 'asc' ] ],
// ejemplo de exclusion de columnas en los filtros automaticos
// "oColumnFilterWidgets" : {
// "aiExclude" : [ 3, 4, 5, 7, 8, 10, 11 ],
// "sSeparator" : "\\s*/+\\s*"
// },
// drawCallback : function(settings, json) {
// lockScreen(false);
// },
// preDrawCallback : function(settings, json) {
// lockScreen(true);
// }
// ,
// rowId: 'id'
});