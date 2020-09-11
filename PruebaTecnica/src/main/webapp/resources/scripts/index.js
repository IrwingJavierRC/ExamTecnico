function soloPermitidos(e) {
	key = e.keyCode || e.which;
	tecla = String.fromCharCode(key).toLowerCase();
	letras = " áéíóúabcdefghijklmnñopqrstuvwxyz";
	especiales = [ 8, 45, 46, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 95 ];

	tecla_especial = false
	for ( var i in especiales) {
		if (key == especiales[i]) {
			tecla_especial = true;
			break;
		}
	}
	if (letras.indexOf(tecla) == -1 && !tecla_especial)
		return false;
}
function validarNumericos(e) {
	var tecla = e.key ? e.key: e.keyCode ? e.keyCode : e.which;
	var te = e.key ? tecla: String.fromCharCode(tecla);
	if (teclasValidas(tecla)) {
		return true;
	}
	var patron = /[0-9\.]/;
	return patron.test(te);
}

function valida(e) {
	var tecla = (document.all) ? e.keyCode : e.which;
	if (teclasValidas(tecla)) {
		return true;
	}
	
	var patron = /[A-Za-z.\s]/;
	var te = String.fromCharCode(tecla);
	return patron.test(te);
}

/**
 * función creada para los input de tipo text solo acepte letras y acentuaciones como la letra ñ
 * 
 * @param e
 *            se le pasa el objeto event
 * @returns
 */
function validarLetra(e) {
	var tecla = (e.keyCode ? e.keyCode : e.which);
	if (teclasValidas(tecla)) {
		return true;
	}
	var patron = /[A-Za-záÁéÉíÍóÓúÚñÑ\s\t]/;
	var te = String.fromCharCode(tecla);
	return patron.test(te);
}

function validarLetra2(e) {
	var tecla = (e.keyCode ? e.keyCode : e.which);
	if (teclasValidas(tecla)) {
		return true;
	}
	var patron = /[0-9A-Za-záÁéÉíÍóÓúÚñÑ\s\t]/;
	var te = String.fromCharCode(tecla);
	return patron.test(te);
}

/**
 * función creada para validad letras, números, guion medio y puntos
 * 
 * @param e
 * @returns
 */
function validarLNGP(e) {
	var tecla = (e.keyCode ? e.keyCode : e.which);
	if (teclasValidas(tecla)) {
		return true;
	}
	var patron = /[-.0-9A-Za-záÁéÉíÍóÓúÚñÑ\s\t]/;
	var te = String.fromCharCode(tecla);
	return patron.test(te);
}

function validarN(e) {
	
	var tecla = e.key ? e.key: e.keyCode ? e.keyCode : e.which;
	var te = e.key ? tecla: String.fromCharCode(tecla);
	
// console.log(tecla);
	if (teclasValidas(tecla)) {
		return true;
// }else{
// console.log('invalido');
	}
	var patron = /[0-9\s\t]/;
// var te = String.fromCharCode(tecla);
	
// console.log(te);
	return patron.test(te);
}

/**
 * Función encargada de validar el límite a los campos
 * 
 * @param e
 * @returns
 */

function limite(e) {
	var tecla = (document.all) ? e.keyCode : e.which;
	if (teclasValidas(tecla)) {
		return true;
	}
	return this.value.length < $(this).attr("maxLength");
}

/**
 * Función encardada de validar solo números, letras, guiones medios, puntos, comas
 * 
 * @param e
 * @returns
 */

function validarNL2(e) {
	var tecla = (document.all) ? e.keyCode : e.which;
	if (teclasValidas(tecla)) {
		return true;
	}
	var patron = /[-.,_ 0-9A-Za-záÁéÉíÍóÓúÚñÑ\s]/;
	var te = String.fromCharCode(tecla);
	return patron.test(te);
}

function onlyAlphabets(e, t) {
	try {
		var charCode = (document.all) ? e.keyCode : e.which;
		if ((charCode > 64 && charCode < 91) || (charCode > 96 && charCode < 123))
			return true;
		else
			return false;
	} catch (err) {
		console.log(err.Description);
	}
}

// teclas de direccion, borrar, suprimir
function teclasValidas(tecla) {
	var valido = false;
	switch (tecla) {
	case 0: // 
	case 8: // backspace
	case 37: // izquierda
	case 38: // arriba
	case 39: // derecha
	case 40: // abajo
	case 46: // supr
	case 'Delete':
	case 'Backspace':
	case 'ArrowRight':
	case 'ArrowLeft':
	case 'ArrowUp':
	case 'ArrowDown':
		valido = true;
	break;
	default:
	break;
	}
	return valido;
}

function validarNL(e) {
	var tecla = (e.keyCode ? e.keyCode : e.which);
	if (teclasValidas(tecla)) {
		return true;
	}
	var patron = /[A-Za-záÁéÉíÍóÓúÚñÑ\s\-\_\.\&\t\S]/;
	var te = String.fromCharCode(tecla);
	return patron.test(te);
}

function validarRFC(e) {
	var tecla = (e.keyCode ? e.keyCode : e.which);

	if (teclasValidas(tecla)) {
		return true;
	}
	var patron = /[0-9A-Za-z\t\&]/;
	var te = String.fromCharCode(tecla);
	return patron.test(te);
}

function validarNLug(e) {
	var tecla = (e.keyCode ? e.keyCode : e.which);
	if (teclasValidas(tecla)) {
		return true;
	}
	var patron = /[0-9A-Za-zñÑ\s\t]/;
	var te = String.fromCharCode(tecla);
	return patron.test(te);
}

function validarNLS(e) {
	var tecla = (e.keyCode ? e.keyCode : e.which);
	if (teclasValidas(tecla)) {
		return true;
	}
	var patron = /[0-9A-Za-záÁéÉíÍóÓúÚñÑ\s\-\.\t\#]/;
	var te = String.fromCharCode(tecla);
	return patron.test(te);
}

function validarTodo(e) {
	var tecla = (e.keyCode ? e.keyCode : e.which);
	if (teclasValidas(tecla)) {
		return true;
	}
	var patron = /[0-9A-Za-záÁéÉíÍóÓúÚñÑ\s\-\.\t\!\"\$\%\&\/\(\)\=\'\¿\?\¡]/;
	var te = String.fromCharCode(tecla);
	return patron.test(te);
}

function soloLetras(e) {
	var tecla = (e.keyCode ? e.keyCode : e.which);
	if (teclasValidas(tecla)) {
		return true;
	}
	var patron = /[A-Za-záÁéÉíÍóÓúÚñÑ\s]+/;
	var te = String.fromCharCode(tecla);
	return patron.test(te);

	// var key = e.keyCode || e.which;
	// var tecla = String.fromCharCode(key).toLowerCase();
	// var letras = " áéíóúabcdefghijklmnñopqrstuvwxyz";
	// var especiales = [ 8, 44 ];
	//
	// var tecla_especial = false
	// for ( var i in especiales) {
	// if (key == especiales[i]) {
	// tecla_especial = true;
	// break;
	// }
	// }
	// if (letras.indexOf(tecla) == -1 && !tecla_especial)
	// return false;
}

/**
 * Función encargada de agregar ceros a la izquierda
 * 
 * @param n
 *            Numero al cual se le concatenarán los ceros
 * @param length
 *            Numero de ceros
 * @returns
 */
function pad(n, length) {
	var n1 = n.toString();
	while (n1.length < length)
		n1 = "0" + n1;
	return n1;
}
/**
 * Función encargada de no permitir espacios al principio
 * 
 * @returns
 */
function sinEspacios() {
	$('body').on('keydown', function(e) {
		if (e.which === 32 && e.target.selectionStart === 0) {
			return false;
		}
	});
}

/**
 * Función creada para seleccionar el tema que el usuario tiene configurado por default
 */
function setTheme() {
	$('#smart-style-0').click(function() {
		localStorage.setItem("skin", "smart-style-0");
	});

	$('#smart-style-1').click(function() {
		localStorage.setItem("skin", "smart-style-1");
	});

	$('#smart-style-2').click(function() {
		localStorage.setItem("skin", "smart-style-2");
	});

	$('#smart-style-3').click(function() {
		localStorage.setItem("skin", "smart-style-3");
	});

	$('#smart-style-4').click(function() {
		localStorage.setItem("skin", "smart-style-4");
	});

	$('#smart-style-5').click(function() {
		localStorage.setItem("skin", "smart-style-5");
	});

	$('#smart-style-6').click(function() {
		localStorage.setItem("skin", "smart-style-6");
	});

}

/**
 * Función creada para normalizar la información enviada por datatables para realizar los filtros de búsqueda
 * 
 * @param data
 */
function planify(data) {
	var column;
	for (var i = 0; i < data.columns.length; i++) {
		column = data.columns[i];
		// console.log(JSON.stringify(column));
		column.searchRegex = column.search.regex;
		column.searchValue = column.search.value;
		delete (column.search);
	}
}




function maxLength(elemento, max) {
	$(elemento).keypress(function(e) {
		if (e.which < 0x20) {
			return;
		}
		if (this.value.length == max) {
			e.preventDefault();
		} else if (this.value.length > max) {
			// Maximum exceeded
			this.value = this.value.substring(0, max);
		}
	});
}



/**
 * Función que muestra el mensaje de color azul
 * 
 * @param titulo
 * @param mensaje
 * @returns
 */
function showOkMessage(titulo, mensaje) {
	$.smallBox({
		title : titulo,
		content : mensaje,
		color : "#296191",
		timeout : 4000,
		icon : "fa fa-thumbs-o-up swing animated"
	});
}

function showMessage(idElemento) {
	$(idElemento).fadeIn();
	$(idElemento).fadeTo(2000, 500).slideUp(500, function() {
		$(idElemento).slideUp(500);
	});
}

/**
 * Función que muestra el mensaje de color rojo
 * 
 * @param titulo
 * @param mensaje
 * @returns
 */
function showErrorMessage(titulo, mensaje) {
	$.smallBox({
		title : titulo,
		content : mensaje,
		color : "#c79121",
		timeout : 4000,
		icon : "fa fa-times-circle swing animated"
	});
}

/**
 * Función que muestra el mensaje de color amarillo
 * 
 * @param titulo
 * @param mensaje
 * @returns
 */
function showWarningMessage(titulo, mensaje) {
	$.smallBox({
		title : titulo,
		content : mensaje,
		color : "#C79121",
		timeout : 4000,
		icon : "fa fa-exclamation-circle swing animated"
	});
}


