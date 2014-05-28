<%-- 
    Document   : inicio
    Created on : 25-may-2014, 21:02:40
    Author     : francisco
--%>

<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<!DOCTYPE html>
<html:html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <link rel="stylesheet" type="text/css" href="style.css">
        <title>JSP Page</title>
        <script type="text/javascript" >
            $(function() {
                $("#origen").attr("placeholder", "Origen");
                $("#destino").attr("placeholder", "Destino");
                $("#fecha").attr("placeholder", "Fecha");
            });
        </script>


    </head>
    <body>
        <div class="contenedor">
            <header>
                <div class="titulos">
                    <h1>Viajes</h1>
                    <html:link action="/inicio.do" styleClass="enCabecera">Principal</html:link>
                    </div>
                    <nav id="navegador" class="derecha">
                        <ul>
                            <li><html:link action="/login.do">Iniciar Sesi&oacute;n</html:link></li>
                            <li><html:link action="/registro.do">Registrarse</html:link></li>
                            <li><html:link action="/inicio.do">C&oacute;mo funciona</html:link></li>
                        </ul>
                    </nav>
                </header>
                <section class="login">
                    <div id="logo">

                    </div>
                    <main id="buscar">
                    <html:form action="/inicio" >
                        <html:text property="ciudad" styleClass="textbox" styleId="origen"></html:text>
                        <html:text property="universidad" styleClass="textbox" styleId="destino"> </html:text>
                        <html:text property="fecha" styleClass="textbox" styleId="fecha"></html:text>
                        <html:submit value="Buscar" property="buscar" styleClass="boton"/>
                    </html:form>
                        <div class="error">
                            <html:errors property="faltaV"></html:errors>
                        </div>
                        <div class="error">
                            <html:errors property="Nociudad"></html:errors>
                        </div>
                        <div class="error">
                            <html:errors property="Nouni"></html:errors>
                        </div>
                        <div class="error">
                            <html:errors property="Nohay"></html:errors>
                        </div>
                </main>
            </section>

        </div>
    </body>
</html:html>
