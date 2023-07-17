<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page session="true" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Iniciar sesión</title>
  <link rel="stylesheet" href="../css/style.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
  <link rel="stylesheet" href="../css/log.css">
</head>

<body>
     <header>
        <nav class="container-fluid navbar navbar-expand-md">
          <div class="container">
            <div class="logo col-8 col-sm-4">
              <img class="imagen-logo" src="../assets/img/codoacodo.png" alt="">
              <h2>Conf Bs As</h2>
            </div>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
              aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse  justify-content-end" id="navbarNav">
              <ul class="navbar-nav">
                <li class="nav-item">
                  <a class="nav-link active" aria-current="page" href="./Index.jsp">La conferencia</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="./Index.jsp">Oradores</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="./Index.jsp">Lugar y fecha</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="./Index.jsp">Conviértete en orador</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="./Index.jsp">Comprar tickets</a>
                </li>
                
                <jsp:include page="../LoginBloque.jsp"></jsp:include>
              </ul>
            </div>
          </div>
        </nav>
      </header>

  <section class="container-fluid h-100 sect-fluid d-flex justify-content-center align-items-center">
    <div class="d-flex justify-content-center align-items-center w-50 tarjeta py-3">
      <form action="../cargaLogIn.jsp" method="POST" class="bg-primary-color col-9">
        <div class="row  px-1">
          <div class="col-12 ">
            <div class="mb-3">
              <h1>Iniciar sesión</h1>
            </div>
          </div>
           
          <div class="col-12 ">
            <div class="mb-3">
              <label for="usuario" class="form-label">Usuario</label>
              <input type="text" class="form-control" name="usuario" id="usuario" placeholder="usuario123">
            </div>
          </div>
          <div class="col-12 ">
            <div class="mb-3">
              <label for="contrasena" class="form-label">Contraseña</label>
              <input type="password" class="form-control"name="contrasena"  id="contrasena" placeholder="">
            </div>
          </div>
          <div class="d-flex justify-content-center">
            <input type="submit" value="Entrar" id="btnIniciarSesion" class="form-label w-50 btn btn-submit bg-success">
          </div>
          <div class="d-flex justify-content-center">
            <p><span class="text-white">No tienes una cuenta creada?</span>  <a href="SignIn.jsp">Crear cuenta</a></p>
          </div>
        </div>
    </div>
    </form> 
  </section>

</body>

</html>