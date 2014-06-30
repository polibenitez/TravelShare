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
        <title>TravelShare</title>
    </head>
    <body>
        <div class="contenedor">
            <header>
                <div class="titulos">
                    <h1>TravelShare</h1>
                    <html:link action="checklogin.do" styleClass="enCabecera">Gesti&oacute;n</html:link>
                    <html:img src="imagenes/guia-menu.png" />              
                </div>
                <div class="entrar">
                    <a><html:link action="/inicio.do">Salir</html:link></a>

                    </div>
                </header>
                <section class="login">
                    <div class="cajas">
                        <div class="caja">
                            <div class="caja-top">
                                <div class="caja-titulo">Ciudades</div>
                                <div class="caja-descrip"><html:link action="/ciudadesAction.do">Gestionar Ciudades</html:link></div>
                            </div>
                            <div class="caja-imagen">
                                <img draggable="false" class="caja-imagen-img" src="imagenes/gestion-img/edificio.jpg">
                            </div>

                        </div>
                        <div class="caja" >
                            <div class="caja-top">
                                <div class="caja-titulo">Usuarios</div>
                                <div class="caja-descrip"><html:link action="/usuarios.do">Gestionar Usuarios</html:link></div>
                            </div>
                            <div class="caja-imagen">
                                <img draggable="false" class="caja-imagen-img" src="imagenes/gestion-img/profesor.png">
                            </div>

                        </div>

                        <div class="caja">
                            <div class="caja-top">
                                <div class="caja-titulo">Universidades</div>
                                <div class="caja-descrip"><html:link action="/universidades.do">Gestionar Universidades</html:link></div>
                        </div>
                        <div class="caja-imagen">
                            <img draggable="false" class="caja-imagen-img" src="imagenes/gestion-img/aula.jpg">
                        </div>
                    </div>

                </div>
            </section>
        </div>
    </body>
</html>
