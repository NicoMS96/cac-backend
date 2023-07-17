/**
 * 
 */

let btnCambiar = document.getElementById("btnCambiarContrasena");
let contrasena = document.getElementById("contrasena");
let nuevaContrasena = document.getElementById("nuevaContrasena");
let repetirContrasena = document.getElementById("repetirContrasena"); 


btnCambiar.addEventListener("click", (e) => {
    if (
        contrasena.value === "" ||
        nuevaContrasena.value === "" ||
        repetirContrasena.value === ""   
    ) {
        e.preventDefault();
        alert("Todos los campos son obligatorios");
    } else {
        if (nuevaContrasena.value.length < 7) {
            e.preventDefault();
            alert("La contraseña debe tener mas de 6 caracteres");
        } else if (nuevaContrasena.value.toLowerCase() !== repetirContrasena.value.toLowerCase()) {
            e.preventDefault();
            alert("Las contraseñas no coinciden");
        }
    }
}); 