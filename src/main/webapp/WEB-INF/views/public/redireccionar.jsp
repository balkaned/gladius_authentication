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
        setTimeout(function() {
            document.getElementById('btnRedir').click();
        }, 10000);
    </script>
  </head>
  <body style="background-color: #2D65F6 !important;">
    <main class="main" id="top">
      <div class="content">
        <div class="col-auto">
            <div class="col-12 text-center mt-10">
                <img width="80" src="resources/assets/img/icons/logoLasticon10.png" />
                <p class="text-center text-white fs-0 mt-5 mb-0">Redireccionando...</p>
                <p class="text-center text-white fs--1 mt-0">En unos segundos usted será redireccionado a su entorno según sus credenciales.</p>
                <div class="text-center mt-5">
                    <div class="spinner-border text-white" role="status"><span class="visually-hidden"></span></div>
                </div>
                <a id="btnRedir" class="ms-3 disabled" href="${url}"></a>
            </div>
        </div>
      </div>
    </main>
  </body>
</html>