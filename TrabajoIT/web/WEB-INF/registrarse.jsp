<%-- 
    Document   : registrase
    Created on : 25-may-2014, 22:16:42
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
        <!--<link rel="stylesheet" type="text/css" href="style.css">-->
        <link href="http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300,300italic,700" rel="stylesheet" />
        <script src="js/jquery.min.js"></script>
        <script src="js/config.js"></script>
        <script src="js/skel.min.js"></script>
        <script src="js/skel-panels.min.js"></script>
        <noscript>
        <link rel="stylesheet" href="css/skel-noscript.css" />
        <link rel="stylesheet" href="css/style.css" />
        <link rel="stylesheet" href="css/style-desktop.css" />
        </noscript>
        <title>TravelShare</title>
        <script type="text/javascript" >
            $(function() {
                $("#nick").attr("placeholder", "Nick");
                $("#nombre").attr("placeholder", "Nombre");
                $("#apellidos").attr("placeholder", "Apellidos");
                $("#correo").attr("placeholder", "Correo").attr("type", "email");
                $("#pass").attr("placeholder", "Contraseña").attr("type", "password");
                $("#repass").attr("placeholder", "Reescribir Contraseña").attr("type", "password");
            });
        </script>
    </head>
    <body>
        <div id="header-wrapper">
            <header class="container" id="site-header">
                <div class="row">
                    <div class="12u">
                        <div id="logo">

                            <html:link action="/inicio.do" style="text-decoration:none;"><h1>TravelShare</h1></html:link>
                            </div>
                            <nav id="nav">
                                <ul>
                                    <li><html:link action="/inicio.do" styleClass="enCabecera">Principal</html:link></li>
                                <li><html:link action="/login.do">Iniciar Sesi&oacute;n</html:link></li>
                                <li class="current_page_item"><html:link action="/registro.do">Registrarse</html:link></li>
                                <li><html:link action="/inicio.do">C&oacute;mo funciona</html:link></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </header>
            </div>
            <div style="width:100%; padding: 0 10% 0 10%;">
                <section class="login">
                <html:form action="/registrar" styleId="registro">
                    <div class="error">
                        <html:errors property="falta"></html:errors>
                        </div>
                        <p>
                        <html:select property="sexo" styleClass="sel">
                            <html:option value="hombre">Hombre</html:option>
                            <html:option value="mujer">Mujer</html:option>
                        </html:select>
                    </p>
                    <p>
                        <html:text property="nick" styleClass="textbox" styleId="nick"></html:text>
                        <div class="error">
                        <html:errors property="nick"></html:errors>
                        </div>
                        </p>
                        <p>
                        <html:text property="nombre" styleClass="textbox" styleId="nombre"></html:text>
                        </p>
                        <p>
                        <html:text property="apellidos" styleClass="textbox" styleId="apellidos"></html:text>
                        </p>
                        <p>
                        <html:text property="email" styleClass="textbox" styleId="correo"></html:text>
                        </p>
                        <p>
                        <html:text property="pass" styleClass="textbox" styleId="pass"></html:text>
                        <div class="error">
                        <html:errors property="pass"></html:errors>
                        </div>
                        </p>
                        <p>
                        <html:text property="repass" styleClass="textbox" styleId="repass"></html:text>
                        </p>
                        <p>
                        <html:submit value="Registrar" property="registrar" styleClass="boton"/>
                    </p>
                </html:form>
            </section>

        </div>
    </body>
</html:html>
