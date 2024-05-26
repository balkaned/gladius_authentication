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

  <body style="background-color: #2D65F6 !important;">
  <f:form id="form" methot="post" modelAttribute="usuarioConeccion" action="verificarLogin">

    <!-- ===============================================-->
    <!--    Main Content-->
    <!-- ===============================================-->
    <main class="main" id="top">
      <div class="container-fluid">
        <div class="">
        </div>
        <!--/.bg-holder-->
        <div class="row flex-center position-relative min-vh-100 g-0 py-5">
          <div class="col-11 col-sm-10 col-xl-8">
            <div class="card border border-200 auth-card">
              <div class="card-body p-0 border-0">
                <div class="row align-items-center gx-0 gy-7">
                  <div style="background-color: #2D65F6 !important; border-radius: 7px 0px 0px 7px !important" class="col-auto rounded-0 position-relative overflow-hidden auth-title-box">
                    <div>
                    </div>
                    <!--/.bg-holder-->
                    <div class="position-relative px-4 px-lg-7 pt-7 pb-7 pb-sm-5 text-center text-md-start pb-lg-7 pb-md-7">
                      <h3 class="mb-3 text-white fs-1">Balkaned Authentication</h3>
                      <p style="font-size:12px;" class="text-white">Software para la gestión de información del trabajador, procesos de cálculo de planillas y los procesos siguientes como integración contable, reporte a Sunat Plame, reporte a ministerio de trabajo, reportes de Afp Net y otros reportes.</p>
                      <!--<ul class="list-unstyled mb-0 w-max-content w-md-auto mx-auto">
                        <li class="d-flex align-items-center"><span class="uil uil-check-circle text-success me-2"></span><span class="text-700 fw-semi-bold">Rápido</span></li>
                        <li class="d-flex align-items-center"><span class="uil uil-check-circle text-success me-2"></span><span class="text-700 fw-semi-bold">Simple</span></li>
                        <li class="d-flex align-items-center"><span class="uil uil-check-circle text-success me-2"></span><span class="text-700 fw-semi-bold">Intuitivo</span></li>
                      </ul>-->
                    </div>
                    <div class="position-relative z-index--1 mb-6 d-none d-md-block text-center mt-md-15"><img class="auth-title-box-img d-dark-none" src="resources/assets/img/spot-illustrations/auth.png" alt="" /><img class="auth-title-box-img d-light-none" src="resources/assets/img/spot-illustrations/auth-dark.png" alt="" /></div>
                  </div>
                  <div class="col mx-auto">
                    <div class="auth-form-box">
                      <div class="text-center mb-7"><a class="d-flex flex-center text-decoration-none mb-4" href="../../../index.html">
                          <div class="d-flex align-items-center fw-bolder fs-5 d-inline-block"><img src="resources/assets/img/icons/logoLast.png" alt="phoenix" width="58" />
                          </div>
                        </a>
                        <h3 class="text-1000">Log in</h3>
                        <p class="text-700 fs--1">Obtenga sus credenciales, accesos a su cuenta e inicie sesión, luego le redireccionaremos a su entorno según sus datos</p>
                      </div>
                      <!--<button class="btn btn-phoenix-secondary w-100 mb-3"><span class="fab fa-google text-danger me-2 fs--1"></span>Sign in with google</button>
                      <button class="btn btn-phoenix-secondary w-100"><span class="fab fa-facebook text-primary me-2 fs--1"></span>Sign in with facebook</button>-->
                      <div class="position-relative">
                        <hr class="bg-200 mt-5 mb-4" />
                        <div class="divider-content-center bg-white">or use email</div>
                      </div>
                      <div class="mb-3 text-start">
                        <label class="form-label" for="email">Usuario</label>
                        <div class="form-icon-container">
                          <!--<input class="form-control form-icon-input" id="email" type="email" placeholder="name@example.com" /><span class="fas fa-user text-900 fs--1 form-icon"></span>-->
                          <f:input id="iptUs" type="text" path="user" cssClass="form-control form-icon-input" aria-describedby="emailHelp" placeholder="Ingrese Usuario" value=""/><span class="fas fa-user text-900 fs--1 form-icon"></span>
                        </div>
                      </div>
                      <div class="mb-3 text-start">
                        <label class="form-label" for="password">Contraseña</label>
                        <div class="form-icon-container">
                          <!--<input class="form-control form-icon-input" id="password" type="password" placeholder="Password" /><span class="fas fa-key text-900 fs--1 form-icon"></span>-->
                          <f:input id="ippass" value="" type="password" path="pass" cssClass="form-control form-icon-input" placeholder="Ingrese Contraseña"/><span class="fas fa-key text-900 fs--1 form-icon"></span>
                        </div>
                      </div>
                      <span style="float:left; text-align:left; font-size: 11px; height:50px; width:280px; border:0px solid green; color:#D90000;">
                              ${mensaje}
                      </span>
                      <div class="row flex-between-center mb-7">
                        <div class="col-auto">
                          <div class="form-check mb-0">
                            <input class="form-check-input" id="basic-checkbox" type="checkbox" checked="checked" />
                            <label class="form-check-label mb-0" for="basic-checkbox">Remember me</label>
                          </div>
                        </div>
                        <!--<div class="col-auto"><a class="fs--1 fw-semi-bold" href="../../../pages/authentication/card/forgot-password.html">Forgot Password?</a></div>-->
                      </div>
                      <!--<button class="btn btn-primary w-100 mb-3">Login</button>-->
                      <button type="submit" class="btn btn-primary w-100 mb-3">Login</button>
                      <!--<div class="text-center"><a class="fs--1 fw-bold" href="../../../pages/authentication/card/sign-up.html">Create an account</a></div>-->
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <script>
        var navbarTopStyle = window.config.config.phoenixNavbarTopStyle;
        var navbarTop = document.querySelector('.navbar-top');
        if (navbarTopStyle === 'darker') {
          navbarTop.classList.add('navbar-darker');
        }

        var navbarVerticalStyle = window.config.config.phoenixNavbarVerticalStyle;
        var navbarVertical = document.querySelector('.navbar-vertical');
        if (navbarVertical && navbarVerticalStyle === 'darker') {
          navbarVertical.classList.add('navbar-darker');
        }
      </script>

    </main>
    <!-- ===============================================-->
    <!--    End of Main Content-->
    <!-- ===============================================-->
    <div class="offcanvas offcanvas-end settings-panel border-0" id="settings-offcanvas" tabindex="-1" aria-labelledby="settings-offcanvas">
      <div class="offcanvas-header align-items-start border-bottom flex-column">
        <div class="pt-1 w-100 mb-6 d-flex justify-content-between align-items-start">
          <div>
            <h5 class="mb-2 me-2 lh-sm"><span class="fas fa-palette me-2 fs-0"></span>Theme Customizer</h5>
            <p class="mb-0 fs--1">Explore different styles according to your preferences</p>
          </div>
          <button class="btn p-1 fw-bolder" type="button" data-bs-dismiss="offcanvas" aria-label="Close"><span class="fas fa-times fs-0"> </span></button>
        </div>
        <button class="btn btn-phoenix-secondary w-100" data-theme-control="reset"><span class="fas fa-arrows-rotate me-2 fs--2"></span>Reset to default</button>
      </div>
      <div class="offcanvas-body scrollbar px-card" id="themeController">
        <div class="setting-panel-item mt-0">
          <h5 class="setting-panel-item-title">Color Scheme</h5>
          <div class="row gx-2">
            <div class="col-6">
              <input class="btn-check" id="themeSwitcherLight" name="theme-color" type="radio" value="light" data-theme-control="phoenixTheme" />
              <label class="btn d-inline-block btn-navbar-style fs--1" for="themeSwitcherLight"> <span class="mb-2 rounded d-block"><img class="img-fluid img-prototype mb-0" src="resources/assets/img/generic/default-light.png" alt=""/></span><span class="label-text">Light</span></label>
            </div>
            <div class="col-6">
              <input class="btn-check" id="themeSwitcherDark" name="theme-color" type="radio" value="dark" data-theme-control="phoenixTheme" />
              <label class="btn d-inline-block btn-navbar-style fs--1" for="themeSwitcherDark"> <span class="mb-2 rounded d-block"><img class="img-fluid img-prototype mb-0" src="resources/assets/img/generic/default-dark.png" alt=""/></span><span class="label-text"> Dark</span></label>
            </div>
          </div>
        </div>
        <div class="border rounded-3 p-4 setting-panel-item bg-white">
          <div class="d-flex justify-content-between align-items-center">
            <h5 class="setting-panel-item-title mb-1">RTL </h5>
            <div class="form-check form-switch mb-0">
              <input class="form-check-input ms-auto" type="checkbox" data-theme-control="phoenixIsRTL" />
            </div>
          </div>
          <p class="mb-0 text-700">Change text direction</p>
        </div>
        <div class="border rounded-3 p-4 setting-panel-item bg-white">
          <div class="d-flex justify-content-between align-items-center">
            <h5 class="setting-panel-item-title mb-1">Support Chat </h5>
            <div class="form-check form-switch mb-0">
              <input class="form-check-input ms-auto" type="checkbox" data-theme-control="phoenixSupportChat" />
            </div>
          </div>
          <p class="mb-0 text-700">Toggle support chat</p>
        </div>
        <div class="setting-panel-item">
          <h5 class="setting-panel-item-title">Navigation Type</h5>
          <div class="row gx-2">
            <div class="col-6">
              <input class="btn-check" id="navbarPositionVertical" name="navigation-type" type="radio" value="vertical" data-theme-control="phoenixNavbarPosition" data-page-url="../../../documentation/layouts/vertical-navbar.html" />
              <label class="btn d-inline-block btn-navbar-style fs--1" for="navbarPositionVertical"> <span class="mb-2 rounded d-block"><img class="img-fluid img-prototype d-dark-none" src="resources/assets/img/generic/default-light.png" alt=""/><img class="img-fluid img-prototype d-light-none" src="resources/assets/img/generic/default-dark.png" alt=""/></span><span class="label-text">Vertical</span></label>
            </div>
            <div class="col-6">
              <input class="btn-check" id="navbarPositionHorizontal" name="navigation-type" type="radio" value="horizontal" data-theme-control="phoenixNavbarPosition" data-page-url="../../../documentation/layouts/horizontal-navbar.html" />
              <label class="btn d-inline-block btn-navbar-style fs--1" for="navbarPositionHorizontal"> <span class="mb-2 rounded d-block"><img class="img-fluid img-prototype d-dark-none" src="resources/assets/img/generic/top-default.png" alt=""/><img class="img-fluid img-prototype d-light-none" src="resources/assets/img/generic/top-default-dark.png" alt=""/></span><span class="label-text"> Horizontal</span></label>
            </div>
            <div class="col-6">
              <input class="btn-check" id="navbarPositionCombo" name="navigation-type" type="radio" value="combo" data-theme-control="phoenixNavbarPosition" data-page-url="../../../documentation/layouts/combo-navbar.html" />
              <label class="btn d-inline-block btn-navbar-style fs--1" for="navbarPositionCombo"> <span class="mb-2 rounded d-block"><img class="img-fluid img-prototype d-dark-none" src="resources/assets/img/generic/nav-combo-light.png" alt=""/><img class="img-fluid img-prototype d-light-none" src="resources/assets/img/generic/nav-combo-dark.png" alt=""/></span><span class="label-text"> Combo</span></label>
            </div>
            <div class="col-6">
              <input class="btn-check" id="navbarPositionTopDouble" name="navigation-type" type="radio" value="dual-nav" data-theme-control="phoenixNavbarPosition" data-page-url="../../../documentation/layouts/dual-nav.html" />
              <label class="btn d-inline-block btn-navbar-style fs--1" for="navbarPositionTopDouble"> <span class="mb-2 rounded d-block"><img class="img-fluid img-prototype d-dark-none" src="resources/assets/img/generic/dual-light.png" alt=""/><img class="img-fluid img-prototype d-light-none" src="resources/assets/img/generic/dual-dark.png" alt=""/></span><span class="label-text"> Dual nav</span></label>
            </div>
          </div>
        </div>
        <div class="setting-panel-item">
          <h5 class="setting-panel-item-title">Vertical Navbar Appearance</h5>
          <div class="row gx-2">
            <div class="col-6">
              <input class="btn-check" id="navbar-style-default" type="radio" name="config.name" value="default" data-theme-control="phoenixNavbarVerticalStyle" />
              <label class="btn d-block w-100 btn-navbar-style fs--1" for="navbar-style-default"> <img class="img-fluid img-prototype d-dark-none" src="resources/assets/img/generic/default-light.png" alt="" /><img class="img-fluid img-prototype d-light-none" src="resources/assets/img/generic/default-dark.png" alt="" /><span class="label-text d-dark-none"> Default</span><span class="label-text d-light-none">Default</span></label>
            </div>
            <div class="col-6">
              <input class="btn-check" id="navbar-style-dark" type="radio" name="config.name" value="darker" data-theme-control="phoenixNavbarVerticalStyle" />
              <label class="btn d-block w-100 btn-navbar-style fs--1" for="navbar-style-dark"> <img class="img-fluid img-prototype d-dark-none" src="resources/assets/img/generic/vertical-darker.png" alt="" /><img class="img-fluid img-prototype d-light-none" src="resources/assets/img/generic/vertical-lighter.png" alt="" /><span class="label-text d-dark-none"> Darker</span><span class="label-text d-light-none">Lighter</span></label>
            </div>
          </div>
        </div>
        <div class="setting-panel-item">
          <h5 class="setting-panel-item-title">Horizontal Navbar Shape</h5>
          <div class="row gx-2">
            <div class="col-6">
              <input class="btn-check" id="navbarShapeDefault" name="navbar-shape" type="radio" value="default" data-theme-control="phoenixNavbarTopShape" data-page-url="../../../documentation/layouts/horizontal-navbar.html" />
              <label class="btn d-inline-block btn-navbar-style fs--1" for="navbarShapeDefault"> <span class="mb-2 rounded d-block"><img class="img-fluid img-prototype d-dark-none mb-0" src="resources/assets/img/generic/top-default.png" alt=""/><img class="img-fluid img-prototype d-light-none mb-0" src="resources/assets/img/generic/top-default-dark.png" alt=""/></span><span class="label-text">Default</span></label>
            </div>
            <div class="col-6">
              <input class="btn-check" id="navbarShapeSlim" name="navbar-shape" type="radio" value="slim" data-theme-control="phoenixNavbarTopShape" data-page-url="../../../documentation/layouts/vertical-navbar.html#horizontal-navbar-slim" />
              <label class="btn d-inline-block btn-navbar-style fs--1" for="navbarShapeSlim"> <span class="mb-2 rounded d-block"><img class="img-fluid img-prototype d-dark-none mb-0" src="resources/assets/img/generic/top-slim.png" alt=""/><img class="img-fluid img-prototype d-light-none mb-0" src="resources/assets/img/generic/top-slim-dark.png" alt=""/></span><span class="label-text"> Slim</span></label>
            </div>
          </div>
        </div>
        <div class="setting-panel-item">
          <h5 class="setting-panel-item-title">Horizontal Navbar Appearance</h5>
          <div class="row gx-2">
            <div class="col-6">
              <input class="btn-check" id="navbarTopDefault" name="navbar-top-style" type="radio" value="default" data-theme-control="phoenixNavbarTopStyle" />
              <label class="btn d-inline-block btn-navbar-style fs--1" for="navbarTopDefault"> <span class="mb-2 rounded d-block"><img class="img-fluid img-prototype d-dark-none mb-0" src="resources/assets/img/generic/top-default.png" alt=""/><img class="img-fluid img-prototype d-light-none mb-0" src="resources/assets/img/generic/top-style-darker.png" alt=""/></span><span class="label-text">Default</span></label>
            </div>
            <div class="col-6">
              <input class="btn-check" id="navbarTopDarker" name="navbar-top-style" type="radio" value="darker" data-theme-control="phoenixNavbarTopStyle" />
              <label class="btn d-inline-block btn-navbar-style fs--1" for="navbarTopDarker"> <span class="mb-2 rounded d-block"><img class="img-fluid img-prototype d-dark-none mb-0" src="resources/assets/img/generic/navbar-top-style-light.png" alt=""/><img class="img-fluid img-prototype d-light-none mb-0" src="resources/assets/img/generic/top-style-lighter.png" alt=""/></span><span class="label-text d-dark-none">Darker</span><span class="label-text d-light-none">Lighter</span></label>
            </div>
          </div>
        </div><a class="bun btn-primary d-grid mb-3 text-white dark__text-100 mt-5 btn btn-primary" href="https://themes.getbootstrap.com/product/phoenix-admin-dashboard-webapp-template/" target="_blank">Purchase template</a>
      </div>
    </div>

    </f:form>
  </body>
</html>