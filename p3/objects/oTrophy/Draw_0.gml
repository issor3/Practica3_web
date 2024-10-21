// En el evento Draw de un objeto en la habitación donde quieres mostrar los datos
draw_self();
var y_offset =60; // Espaciado vertical


for (var i = 0; i < array_length(global.tabla); i++) {
    draw_text(450, 300 + y_offset * i, "Habitacion " + string(i + 1) + ": " + string(global.tabla[i]));
}
