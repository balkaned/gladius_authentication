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
        }, 7000);
    </script>
  </head>
  <body>
    <main class="main" id="top">
      <div class="content">
        <div class="col-12">
            <h3 class="text-center">Redireccionando...</h3>
            <p class="text-center">En unos segundos usted será redireccionado a su entorno según sus credenciales.</p>
            <div class="text-center">
                <div class="spinner-border text-primary" role="status"><span class="visually-hidden"></span></div>
            </div>
            <a id="btnRedir" class="ms-3 disabled" href="${url}" ></a>
        </div>
      </div>
    </main>
  </body>
</html>