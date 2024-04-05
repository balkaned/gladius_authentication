package com.balkaned.gladius.controllers;

import com.balkaned.gladius.beans.UsuarioConeccion;
import com.balkaned.gladius.services.UsuarioConeccionService;
import jakarta.servlet.http.HttpServletRequest;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

@RestController
@Slf4j
public class LoginController {

    @Autowired
    UsuarioConeccionService usuarioConeccionService;

    @RequestMapping("/login")
    public ModelAndView login(ModelMap model, HttpServletRequest request) {
        log.info("/login");

        UsuarioConeccion uc = new UsuarioConeccion();
        model.addAttribute("usuarioConeccion", uc);
        String tip = "";

        if (request.getSession().getAttribute("tiposession") == null) {
            tip = "0";
        } else {
            if (request.getSession().getAttribute("tiposession").equals("2")) {
                model.addAttribute("mensaje", "Contraseña Erronea");
            }

            if (request.getSession().getAttribute("tiposession").equals("3")) {
                model.addAttribute("mensaje", "Usuario o Contraseña Incorrecta");
            }

            if (request.getSession().getAttribute("tiposession").equals("4")) {
                model.addAttribute("mensaje", "No se puede Ingresar Campos Vacíos, por favor ingrese Usuario y Contraseña");
            }

            if (request.getSession().getAttribute("tiposession").equals("5")) {
                model.addAttribute("mensaje", "Alerta!, Hemos detectado que no es el Admnistrador de la aplicación. "
                        + "Este software es un producto Licenciado y Registrado en Indecopi  Copyright© 2023 Balkaned www.balkaned.com Todos los derechos reservados. Derechos de autor. Todos los contenidos de este Sitio No se va a poder "
                        + "instalar puede conectar con Base de Datos Postgres(por defecto), Mysql, SQl Server, revise que los parámetros de conexión en la app "
                        + "para el archivo de configuración application.properties coincidan con la configuración del motor de base Datos, "
                        + "puede que la base de datos no este aún restaurada o el proceso de restauración falló, "
                        + "no olvide copiar el Driver de Conexión Postgres com.mysql.jdbc_5.1.5.jar con extensión jar, en la carpeta del Tomcat "
                        + "C:\\Program Files (x86)\\Apache Software Foundation\\Tomcat 7.0\\webapps\\Gladius\\WEB-INF\\lib\\ "
                        + "luego debe Parar y Volver a Desplegar el WAR, esta app esta configurada para Apache Tomcat v7, en caso el problema persista consulte con el administrador del "
                        + "sistema balkanedperu@gmail.com.");
            }
        }

        return new ModelAndView("public/login");
    }

    @RequestMapping("/verificarLogin")
    public ModelAndView verificarLogin(ModelMap model, HttpServletRequest request, @ModelAttribute("usuarioConeccion") UsuarioConeccion uc, BindingResult result, SessionStatus status) {
        log.info("/verificarLogin");

        UsuarioConeccion uc2 = usuarioConeccionService.obtenerUsuarioConeccionByName(uc);

        if (uc2.getUser().equals("sinbd")) {
            request.getSession().setAttribute("tiposession", "5");

            return new ModelAndView("redirect:/login");
        } else {
            if (uc.getUser().equals("")) {
                log.info("Campos Vacios: ");
                request.getSession().setAttribute("tiposession", "4");

                return new ModelAndView("redirect:/login");
            } else {
                if (uc2.getUser().equals("noecontrado")) {
                    log.info("Usuario o Contraseña Incorrecta");
                    request.getSession().setAttribute("tiposession", "3");

                    return new ModelAndView("redirect:/login");
                } else {
                    if (uc2.getPass().equals(uc.getPass())) {

                        UsuarioConeccion uc3 = usuarioConeccionService.obtenerUsuarioConeccionById(uc2.getId_usuario());

                        log.info("ID_Usuario: " + uc2.getId_usuario());

                        request.getSession().setAttribute("user", uc3.getUser());
                        request.getSession().setAttribute("tiposession", "1");

                        log.info("User: " + uc3.getUser());
                        log.info("Company: " + uc3.getDesCia());
                        log.info("Email: " + uc3.getEmail());

                        UsuarioConeccion uc4 = usuarioConeccionService.obtenerUrlConexion(uc2);
                        String UrlEntornoConexiónAWS=uc4.getUrlConexion();
                        log.info("UrlEntornoConexiónAWS: " + UrlEntornoConexiónAWS);
                        log.info("Redireccionando... a su entorno AWS: ",UrlEntornoConexiónAWS);

                        //return new ModelAndView("redirect:"+UrlEntornoConexiónAWS);
                        //return new ModelAndView("redirect:/redireccionar@'"+UrlEntornoConexiónAWS+"'");
                        return new ModelAndView("redirect:/redireccionar@"+uc2.getId_usuario());
                    } else {
                        log.info("Contraseña Erronea");
                        request.getSession().setAttribute("tiposession", "2");

                        return new ModelAndView("redirect:/login");
                    }
                }
            }
        }
    }

    @RequestMapping("/redireccionar@{idUser}")
    public ModelAndView redireccionar(ModelMap model, HttpServletRequest request, @PathVariable String idUser) {
        log.info("/redireccionar");

        UsuarioConeccion uc5 = new UsuarioConeccion();
        uc5.setId_usuario(idUser);

        UsuarioConeccion uc6 = usuarioConeccionService.obtenerUrlConexion(uc5);
        String UrlEntornoConexiónAWS=uc6.getUrlConexion();

        model.addAttribute("url",UrlEntornoConexiónAWS);

        return new ModelAndView("public/redireccionar");
    }
}
