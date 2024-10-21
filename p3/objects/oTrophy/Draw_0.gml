
draw_self();
var y_offset =60; 


for (var i = 0; i < array_length(global.tabla); i++) {
    draw_text(450, 300 + y_offset * i, "Habitacion " + string(i + 1) + ": " + string(global.tabla[i]));
}
