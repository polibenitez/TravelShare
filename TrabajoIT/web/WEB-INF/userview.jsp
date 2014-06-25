<%-- 
    Document   : userview
    Created on : 26-may-2014, 12:56:44
    Author     : manolo
--%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css" type="text/css">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="contenedor">
            <header>
                <div class="titulos">
                    <h1>TravelShare</h1>
                    <html:link action="/inicio.do">Principal</html:link>
                    <img src="imagenes/guia-menu.png">
                    Gesti&oacute;n
                    <img src="imagenes/guia-menu.png">
                </div>
                <div class="entrar">
                    <a href="./salir.php">Salir</a>
                </div>
            </header>
            <section class="login">
                <div class="cajas">
                    <div class="caja">
                        <div class="caja-top">
                            <div class="caja-titulo">Publicaciones</div>
                           <html:link action="/publicaciones.do">Gestionar Publicaciones</html:link>
                        </div>
                        <div class="caja-imagen">
                            <img draggable="false" class="caja-imagen-img" src="imagenes/gestion-img/asignatura.jpg">
                        </div>
                    </div>
                    <div class="caja">
                        <div class="caja-top">
                            <div class="caja-titulo">Veh&iacute;culos</div>
                        <html:link action="/vehiculo.do">Gestionar Veh&iacute;culos</html:link>
                        </div>
                        <div class="caja-imagen">
                            <img draggable="false" class="caja-imagen-img" src="imagenes/gestion-img/lugar.jpg">
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </body>
</html>
