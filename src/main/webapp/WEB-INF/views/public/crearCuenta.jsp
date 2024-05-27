<%--
    Created on : 15/06/2023, 12:20:00 PM
    Author     : Jean Quiroz
    Email	   : jeanp.quiroz@gmail.com
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en-US" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <jsp:include page="links.jsp"></jsp:include>

    <script>
      var phoenixIsRTL = window.config.config.phoenixIsRTL;
      if (phoenixIsRTL) {
        var linkDefault = document.getElementById('style-default');
        var userLinkDefault = document.getElementById('user-style-default');
        linkDefault.setAttribute('disabled', true);
        userLinkDefault.setAttribute('disabled', true);
        document.querySelector('html').setAttribute('dir', 'rtl');
      } else {
        var linkRTL = document.getElementById('style-rtl');
        var userLinkRTL = document.getElementById('user-style-rtl');
        linkRTL.setAttribute('disabled', true);
        userLinkRTL.setAttribute('disabled', true);
      }
    </script>
  </head>

  <style>
    #parrafo2{
        text-align: justify;
    }

  </style>

  <body style="background-color: #2D65F6 !important;">

    <!-- ===============================================-->
    <!--    Main Content-->
    <!-- ===============================================-->
    <main class="main" id="top">
      <div class="container">
        <div class="row flex-center min-vh-100 py-5">
          <div class="col-sm-10 col-md-8 col-lg-5 col-xl-5 col-xxl-3"><a class="d-flex flex-center text-decoration-none mb-4" href="../../../index.html">
              <div class="d-flex align-items-center fw-bolder fs-3 d-inline-block"><img src="resources/assets/img/icons/logoLasticon10.png" alt="phoenix" width="58" />
              </div>
            </a>
            <div class="text-center mb-5">
              <h3 class="text-body-highlight text-white fs-1">Crear cuenta</h3>
              <p id="parrafo2" class="mt-3 text-body-tertiary text-white fs--1">Crea tu cuenta de balkaned y accede a todas nuestras plataformas como gladius, amakeya, etc, todo nuestro
              proceso es de manera online, mediante nuestra pasarela de pagos lo podrás hacer con visa, mastercad o paypal, ni bien recibamos una confirmación de tu pago, nuestro robot creará tu cuenta y te enviaremos tus accesos
              al correo que hayas registrado, no olvides seleccionar el software que utilizarás, puede ser 1 o más plataromas, saludos y éxitos en tu nuevo proyecto!</p>
            </div>
            <button class="btn btn-phoenix-secondary w-100 mb-3"><span class="fab fa-google text-danger me-2 fs-9"></span>Sign up with google</button>
            <button class="btn btn-phoenix-secondary w-100"><span class="fab fa-facebook text-primary me-2 fs-9"></span>Sign up with facebook</button>
            <!--<div class="position-relative mt-4">
              <hr class="bg-body-secondary" />
              <div class="divider-content-center">or use email</div>
            </div>-->
            <form>
              <div class="mb-3 text-start mt-3">
                <label class="form-label text-white" for="name">Name</label>
                <input class="form-control" id="name" type="text" placeholder="Name" />
              </div>
              <div class="mb-3 text-start">
                <label class="form-label text-white" for="email">Email address</label>
                <input class="form-control" id="email" type="email" placeholder="name@example.com" />
              </div>
              <div class="row g-3 mb-3">
                <div class="col-sm-6">
                  <label class="form-label text-white" for="password">Password</label>
                  <input class="form-control form-icon-input" id="password" type="password" placeholder="Password" />
                </div>
                <div class="col-sm-6">
                  <label class="form-label text-white" for="confirmPassword">Confirm Password</label>
                  <input class="form-control form-icon-input" id="confirmPassword" type="password" placeholder="Confirm Password" />
                </div>
              </div>
              <div class="form-check mb-3">
                <input class="form-check-input" id="termsService" type="checkbox" />
                <label class="form-label fs-9 text-transform-none text-white" for="termsService">I accept the <a class="text-white" href="#!">terms </a>and <a class="text-white" href="#!">privacy policy</a></label>
              </div>
              <button class="btn btn-success w-100 mb-3">Crear cuenta</button>
              <div class="text-center"><a class="fs--1 fw-bold text-white me-3" href="login">Ir atras</a><a class="fs--1 fw-bold text-white" href="login">Iniciar session con una cuenta existente</a></div>
            </form>
          </div>
        </div>
      </div>
      <script>
        var navbarTopStyle = window.config.config.phoenixNavbarTopStyle;
        var navbarTop = document.querySelector('.navbar-top');
        if (navbarTopStyle === 'darker') {
          navbarTop.setAttribute('data-navbar-appearance', 'darker');
        }

        var navbarVerticalStyle = window.config.config.phoenixNavbarVerticalStyle;
        var navbarVertical = document.querySelector('.navbar-vertical');
        if (navbarVertical && navbarVerticalStyle === 'darker') {
          navbarVertical.setAttribute('data-navbar-appearance', 'darker');
        }
      </script>

    </main>
    <!-- ===============================================-->
    <!--    End of Main Content-->
    <!-- ===============================================-->
  </body>
</html>