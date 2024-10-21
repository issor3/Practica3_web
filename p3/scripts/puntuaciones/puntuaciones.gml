global.tabla = array_create(2);
	for (var i = 0; i < 2; i++) {
	    global.tabla[i] = 0;
	}


function guardar_dato(texto, punt) {
    var hab = string_delete(texto, 1, 1);
    var numhab = floor(real(hab));
    
    if (numhab >= 0 && numhab < array_length(global.tabla)) {
        global.tabla[numhab] = punt;
    } else {
        show_message("Error: número de habitación fuera de rango.");
    }
}
