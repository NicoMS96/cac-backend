let ticket = 200;
let total = 0;
let txtCantidad = document.getElementById("cantidad");
let cmbCategoria = document.getElementById("categoria");
let lblTotal = document.getElementById("lblTotalPagar");
let btnBorrar = document.getElementById("btnBorrar");
let btnResumen = document.getElementById("btnResumen");

btnBorrar.addEventListener("click", () => {
    lblTotal.innerHTML = `Total a pagar: $`;
})

txtCantidad.addEventListener("click", () => {
    precioTotal();
})

cmbCategoria.addEventListener("change", () => {
    precioTotal();
})

function precioTotal() {
    let descuentoCat = 0;
    switch (cmbCategoria.value) {
        case "Estudiante":
            descuentoCat = 0.80;
            break;
        case "Trainee":
            descuentoCat = 0.50;
            break;
        case "Junior":
            descuentoCat = 0.15;
            break;
    }

    total = ticket * txtCantidad.value;
    total = total - (total * descuentoCat);

    lblTotal.innerHTML = `Total a pagar: $${total}`;
}

btnResumen.addEventListener("click", (e) => {
    e.preventDefault();
    if (validarCampos()) {
        alert(`RESUMEN
            Nombre: ${nombre}
            Apellido: ${apellido}
            Correo: ${correo}
            Cantidad: ${txtCantidad.value}
            Categoria: ${cmbCategoria.value}
            Precio: ${total}`);
    }
})

let nombre, apellido, correo;
function validarCampos() {
    nombre = document.getElementById("nombre").value;
    apellido = document.getElementById("apellido").value;
    correo = document.getElementById("correo").value;
    var patron = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

    let valido = true;

    if (nombre.trim().length == 0 || apellido.trim().length == 0 || correo.trim().length == 0 || txtCantidad.value < 1) {
        alert("Todos los campos son obligatorios")
        return false;
         
    }

    if (!patron.test(correo)) {
        alert("Ingrese un correo valido")
        return false;
    }

    return valido;
}