/**
 * 
 */

let btnCrear = document.getElementById("btnCrearCuenta");
let nombre = document.getElementById("nombre");
let apellido = document.getElementById("apellido");
let correo = document.getElementById("correo");
let usuario = document.getElementById("usuario");
let contrasena = document.getElementById("contrasena");
let repetirContrasena = document.getElementById("repetirContrasena"); 


btnCrear.addEventListener("click", (e) => {
    if (
        nombre.value === "" ||
        apellido.value === "" ||
        correo.value === "" ||
        usuario.value === "" ||
        contrasena.value === "" ||
        repetirContrasena.value === ""
    ) {
        e.preventDefault();
        alert("Todos los campos son obligatorios");
    } else {
        if (contrasena.value.length < 7) {
            e.preventDefault();
            alert("La contraseña debe tener mas de 6 caracteres");
        } else if (contrasena.value.toLowerCase() !== repetirContrasena.value.toLowerCase()) {
            e.preventDefault();
            alert("Las contraseñas no coinciden");
        }
    }
}); 