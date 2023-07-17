<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
  <title>Conferencia</title>
  <link rel="stylesheet" href="../css/style.css">
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
                  <a class="nav-link active" aria-current="page" href="#conferencia">La conferencia</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#oradores">Oradores</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#lugar">Lugar y fecha</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#conviertete">Conviértete en orador</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#comprar-tickets">Comprar tickets</a>
                </li>
                
                <jsp:include page="../LoginBloque.jsp"/> 
                
              </ul>
            </div>
          </div>
        </nav>
      </header>

  <section id="conferencia" class="container-fluid la-conferencia mb-3" id="la-conferencia">
    <div class="container  h-100 d-flex align-items-center justify-content-end">
      <div class="textos-principal col-12 col-md-6 d-flex flex-column align-items-end ">
        <h1>Conf Bs As</h1>
        <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Itaque aliquid ex modi accusantium, quo omnis ea
          delectus dignissimos natus, vero exercitationem pariatur perspiciatis expedita laudantium porro totam.
          Eligendi, aspernatur ut!</p>
        <div class="container-enlace">
          <a class="btn btn-ser-orador" href="#conviertete">Quiero ser orador</a>
          <a class="btn btn-comprar-ticket" href="#comprar-tickets">Comprar ticket</a>
        </div>
      </div>
    </div>
  </section>

  <section class="container cards d-flex flex-column" id="oradores">
    <div class="row text-center">
      <span>CONOCE A LOS</span>
      <h2>ORADORES</h2>
    </div>
    <div class="row d-flex justify-content-evenly">

      <div class="card m-3" style="width: 18rem;">
        <img src="../assets/img/steve.jpg" class="card-img-top" alt="...">
        <div class="card-body">
          <a href="" class="btn btn-orador btn-js">javascript</a>
          <a href="" class="btn btn-orador btn-react">React</a>
          <h5 class="card-title">Steve Jobs</h5>
          <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Officia ratione ea labore
            quisquam
            corrupti placeat pariatur ipsa doloribus neque saepe.</p>
        </div>
      </div>

      <div class="card m-3" style="width: 18rem;">
        <img src="../assets/img/bill.jpg" class="card-img-top" alt="...">
        <div class="card-body">
          <a href="" class="btn btn-orador btn-js">javascript</a>
          <a href="" class="btn btn-orador btn-react">React</a>
          <h5 class="card-title">Bill Gates</h5>
          <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Officia ratione ea labore
            quisquam
            corrupti placeat pariatur ipsa doloribus neque saepe.</p>
        </div>
      </div>

      <div class="card m-3" style="width: 18rem;">
        <img src="../assets/img/ada.jpeg" class="card-img-top" alt="...">
        <div class="card-body">
          <a href="" class="btn btn-orador btn-negocios">Negocios</a>
          <a href="" class="btn btn-orador btn-startups">Startups</a>
          <h5 class="card-title">Ada Lovelace</h5>
          <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Officia ratione ea labore
            quisquam
            corrupti placeat pariatur ipsa doloribus neque saepe.</p>
        </div>
      </div>

    </div>
  </section>

  <section class="container-fluid lugar mb-3 d-flex" id="lugar">
    <div class="d-none d-sm-block">
      <img id="honolulu" src="../assets/img/honolulu.jpg" alt="">
    </div>
    <div class="col-12 col-sm-6 text-white p-3">
      <h2>Bs As - Octubre</h2>
      <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Itaque aliquid ex modi accusantium, quo omnis ea
        delectus dignissimos natus, vero exercitationem pariatur perspiciatis expedita laudantium porro totam.
        Eligendi, aspernatur ut!</p>
      <a class="btn btn-conoce-mas" href="">Conocé más</a>
    </div>
  </section>

  <section id="conviertete" class="container conviertete-orador d-flex justify-content-center mb-3">
    <div class="col-8">
      <div class="row text-center mb-2">
        <span>CONVIÉRTETE EN UN</span>
        <h2>ORADOR</h2>
      </div>
      <form action="#">
        <div class="row  px-1">
          <div class="col-12 col-md-6 mb-3">
            <input class="form-control" type="text" placeholder="Nombre" aria-label="default input example">
          </div>
          <div class="col-12 col-md-6 mb-3">
            <input class="form-control" type="text" placeholder="Apellido" aria-label="default input example">
          </div>
        </div>
        <div class="row px-3 mb-3">
          <textarea class="form-control" id="sobre-que" aria-label="default input example"
            placeholder="Sobre qu� quieres hablar?" style="resize: none;" rows="5"></textarea>
        </div>
        <div class="row px-3">
          <input type="submit" value="Enviar" class="btn btn-submit">
        </div>
      </form>
    </div>
  </section>

  <div class="container-fluid" id="container-comprar-tickets">
    <section id="comprar-tickets" class="container conviertete-orador d-flex justify-content-center mt-4">
      <div class="col-8 mt-4">
        <div class="row text-center mb-2">
          <span>COMPRAR</span>
          <h2>TICKETS</h2>
        </div>
        <div class="cards-categorias">
          <div class="card1 text-center m-1 py-3 px-5">
            <p class="categ"><b>Estudiante</b><br>
              Tiene un descuento <br>
              <b>80%</b>
            </p>
            <span class="document">*Presentar documentación</span>
          </div>
          <div class="card2 text-center m-1 py-3 px-5">
            <p class="categ"><b>Trainee</b><br>
              Tiene un descuento <br>
              <b>50%</b>
            </p>
            <span class="document">*Presentar documentación</span>
          </div>
          <div class="card3 text-center m-1 py-3 px-5">
            <p class="categ"><b>Junior</b><br>
              Tiene un descuento <br>
              <b>15%</b>
            </p>
            <span class="document">*Presentar documentación</span>
          </div>
        </div>


        <div class="row text-center mb-2">
          <span>VENTA</span>
          <h2>VALOR DE TICKET $200</h2>
        </div>
        <form id="formulario" action="cargaForm.jsp">
          <div class="row  px-1">
            <div class="col-12 col-md-6 mb-3">
              <input class="form-control" id="nombre" name="nombre" type="text" placeholder="Nombre" aria-label="default input example">
            </div>
            <div class="col-12 col-md-6 mb-3">
              <input class="form-control" type="text" id="apellido" name="apellido" placeholder="Apellido" aria-label="default input example">
            </div>
          </div>
          <div class="row px-3 mb-3">
            <input class="form-control" type="text" id="correo" name="correo" placeholder="Correo" aria-label="default input example">
          </div>
          <div class="row  px-1">
            <div class="col-12 col-md-6 mb-3">
              <label for="cantidad">Cantidad</label>
              <input class="form-control" id="cantidad" type="number" name="cantidad" min="1"   placeholder="Cantidad"
                aria-label="default input example">
            </div>
            <div class="col-12 col-md-6 mb-3">
              <label for="categoria">Categoría</label>
              <select class="form-select" name="categoria" id="categoria">
                <option value="0" disabled>-- Seleccione una opción --</option>
                <option value="Estudiante">Estudiante</option>
                <option value="Trainee">Trainee</option>
                <option value="Junior">Junior</option>
              </select>
            </div>
          </div>

          <div class="row px-3">
            <div class="alert alert-primary px-3" role="alert">
              <label id="lblTotalPagar">Total a pagar: $</label>
            </div>
          </div>

          <div class="row px-1">
            <div class="col-12 col-md-6 mb-3">
              <input type="reset" value="Borrar" id="btnBorrar" class="btn btn-submit w-100">
            </div>
            <div class="col-12 col-md-6 mb-3">
              <input type="submit" value="Resumen" id="btnResumen" class="btn btn-submit w-100"   >
            </div>
          </div>


        </form>
      </div>
    </section>
  </div>  
 
 

  <footer class="container-fluid py-4">
    <ul class="col-12 m-0 d-flex flex-wrap justify-content-center align-items-center h-100">
      <li class="nav-item">
        <a class="nav-link" href="#">Preguntas frecuentes</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Cont�ctanos</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Prensa</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Conferencias</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Terminos y condiciones</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Privacidad</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Estudiantes</a>
      </li>
    </ul>
  </footer>

  <script
  src="https://code.jquery.com/jquery-3.7.0.min.js"
  integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g="
  crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
    crossorigin="anonymous"></script>
    <script src="../scripts/comprarTicket.js"></script>
</body>

</html>
