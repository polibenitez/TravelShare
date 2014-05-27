<%-- 
    Document   : gestion
    Created on : 27-may-2014, 22:42:58
    Author     : francisco
--%>

<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="contenedor">
            <header>
                <div class="titulos">
                    <h1>Viajes</h1>
                    <html:link action="/inicio.do" styleClass="enCabecera">Principal</html:link>
                    <html:img src="imagenes/guia-menu.png" />
                    Gesti&oacute;n
                    <html:img src="imagenes/guia-menu.png" />
                </div>
                <div class="entrar">

                    <a href="./salir.php">Salir</a>
                </div>
            </header>
            <section class="login">
                <div class="cajas">
                    <div class="caja" onclick="irAPagina('gestion-edificios')">
                        <div class="caja-top">
                            <div class="caja-titulo">Ciudades</div>
                            <div class="caja-descrip">Gestionar Ciudades</div>
                        </div>
                        <div class="caja-imagen">
                            <img draggable="false" class="caja-imagen-img" src="imagenes/gestion-img/edificio.jpg">
                        </div>

                    </div>
                    <div class="caja" onclick="irAPagina('gestion-profesores')">
                        <div class="caja-top">
                            <div class="caja-titulo">Usuarios</div>
                            <div class="caja-descrip">Gestionar Usuarios</div>
                        </div>
                        <div class="caja-imagen">
                            <img draggable="false" class="caja-imagen-img" src="imagenes/gestion-img/profesor.png">
                        </div>

                    </div>
                    <div class="caja" onclick="irAPagina('gestion-asignaturas')">
                        <div class="caja-top">
                            <div class="caja-titulo">Publicaciones</div>
                            <div class="caja-descrip">Gestionar Publicaciones</div>
                        </div>
                        <div class="caja-imagen">
                            <img draggable="false" class="caja-imagen-img" src="imagenes/gestion-img/asignatura.jpg">
                        </div>

                    </div>
                    <div class="caja" onclick="irAPagina('gestion-aulas')">
                        <div class="caja-top">
                            <div class="caja-titulo">Universidades</div>
                            <div class="caja-descrip">Gestionar Universidades</div>
                        </div>
                        <div class="caja-imagen">
                            <img draggable="false" class="caja-imagen-img" src="imagenes/gestion-img/aula.jpg">
                        </div>
                    </div>
                    <div class="caja" onclick="irAPagina('gestion-lugares')">
                        <div class="caja-top">
                            <div class="caja-titulo">Veh&iacute;culos</div>
                            <div class="caja-descrip">Gestionar Veh&iacute;culos</div>
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
