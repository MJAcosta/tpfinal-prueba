<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Conf Bs As</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous"> 
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <link href="css/style.css" rel="stylesheet">
    
</head>
<body>

  
  
  <div class="container-fluid g-0">
    
    <div class="row w-100 m-0 barraNav">

      <div class="col-4">
        <div class="logo">
              <a href="index.html"><img src="img/codoacodo.png" height="120"></a>
              <a href="index.html" class="navbar-brand text-white fs-2">Conf Bs As</a>
            </div>
      </div>

      <div class="col-8 menu w-auto justify-content-center">
       
            <ul class="navbar-nav flex-row textoMenu">
              <li class="nav-item m-2"><a href="index.html" class="nav-link text-white">La conferencia</a></li>
              <li class="nav-item m-2"><a href="index.html#anclaOradores" class="nav-link text-white opacity-50">Los oradores</a></li>
              <li class="nav-item m-2"><a href="index.html#anclaLugarYfecha" class="nav-link text-white opacity-50">El lugar y la fecha</a></li>
              <li class="nav-item m-2"><a href="index.html#anclaSerOradore" class="nav-link text-white opacity-50">Conviértete en orador</a></li>
              <li class="nav-item m-2"><a href="" class="nav-link" style="color: #29a744;">Comprar tickets</a></li>
            </ul>
          
      </div>

      
     
    
    </div>
    
    <div class="row justify-content-center descuentos g-0">
      <div class="col-2 descuento border border-primary m-1">
        <p class="habilidad">Estudiante</p>
        <p class="tienenDescuento">Tienen un descuento</p>
        <p class="cantidadDescuento">80%</p>
        <p class="presentarDocumentacion">* Presentar documentación</p>
      </div>

      <div class="col-2 descuento border border-success m-1">
        <p class="habilidad">Trainee</p>
        <p class="tienenDescuento">Tienen un descuento</p>
        <p class="cantidadDescuento">50%</p>
        <p class="presentarDocumentacion">* Presentar documentación</p>      
      </div>

      <div class="col-2 descuento border border-warning m-1">
        <p class="habilidad">Junior</p>
        <p class="tienenDescuento">Tienen un descuento</p>
        <p class="cantidadDescuento">15%</p>
        <p class="presentarDocumentacion">* Presentar documentación</p>  
      </div>
    </div>

    <div class="row justify-content-center mt-2 me-0 ms-0">
      <div class="col-auto">
        <p>VENTA</p>
      </div>
    </div>

    <div class="row valorTicket justify-content-center mt-2 me-0 ms-0">
      <div class="col-auto">
        <p>VALOR DE TICKET $200</p>
      </div>
    </div>

<form action="FrontController?accion=insert"method="post">
    <div class="row justify-content-center mb-3 me-0 ms-0">
      <div class="col-3">
        <div>
          <input type="text" class="form-control" id="inputNombre" name="nombre" aria-describedby="emailHelp" placeholder="Nombre">
        </div>
      </div>

      <div class="col-3">
        <div>
          <input type="text" class="form-control" id="inputApellido" name="apellido" aria-describedby="emailHelp" placeholder="Apellido">
        </div>
      </div>

    </div>

    <div class="row justify-content-center mb-3 me-0 ms-0">
      <div class="col-6">
        <div>
          <input type="email" class="form-control" id="inputCorreo" name="mail" aria-describedby="emailHelp" placeholder="Correo">
        </div>
      </div>
    </div>

    <div class="row justify-content-center me-0 ms-0">
      <div class="col-3">
        <p class="textoCantidad" name="cantidad">Cantidad</p>
      </div>

      <div class="col-3">
        <p class="textoCategoria" name="categoria">Categoria</p>
      </div>
    </div>

    

    <div class="row justify-content-center mb-3 me-0 ms-0">
      <div class="col-3">
        <input type="number" class="form-control" id="inputCantidad" min="1" aria-describedby="emailHelp" placeholder="Ingrese Cantidad..." onkeydown="evitarNegativo(event)">
      </div>

      <div class="col-3">
        <select class="form-select" aria-label="Default select example" id="inputCategoria";>
          <option value="0">Seleccione categoria</option>
          <option value="1" id="estudiante">Estudiante</option>
          <option value="2" id="trainee">Trainee</option>
          <option value="3" id="junior">Junior</option>
        </select>
      </div>
    </div>

    <div class="row justify-content-center mb-4 justify-content-center me-0 ms-0">
      <div class="col-6 bg-info totalAPagar justify-content-center" id="pagoTotal">
        <p>Total a pagar: $<span id="total"></span></p>
      </div>
    </div>
    <div class="row justify-content-center me-0 ms-0 m-0">
      <div class="col-2 m-2">
        <button id="borrar" type="reset" class="btn btn-danger text-light px-5 w-100 h-100 fs-2">Borrar</button>
      </div>

      <div class="col-2 m-2">
        <button id="resumen" type="button" class="btn btn-warning text-light px-5 w-100 h-100 fs-2">Resumen</button>
      </div>
      
       <div class="col-2 m-2">
        <button id="comprar" type="submit" class="btn btn-success text-light px-5 w-100 h-100 fs-2">Comprar</button>
      </div>
    </div>
</form>
  <div class="row m-0">
    <div class="col-8 menuInferior w-100">
       
      <ul class="navbar-nav flex-row textoMenuInferior align-items-center">
        <li class="nav-item linkInferior"><a href="#" class="nav-link text-white">Preguntas Frecuentes</a></li>
        <li class="nav-item linkInferior"><a href="#" class="nav-link text-white">Contáctanos</a></li>
        <li class="nav-item linkInferior"><a href="#" class="nav-link text-white">Prensa</a></li>
        <li class="nav-item linkInferior"><a href="#" class="nav-link text-white">Conferencias</a></li>
        <li class="nav-item linkInferior"><a href="#" class="nav-link text-white">Términos y condiciones</a></li>
        <li class="nav-item linkInferior"><a href="#" class="nav-link text-white">Privacidad</a></li>
        <li class="nav-item linkInferior"><a href="#" class="nav-link text-white">Estudiantes</a></li>
      </ul>
    
</div>
  </div>

</div>

<script src="js/index.js"></script>
</body> 
</html>
