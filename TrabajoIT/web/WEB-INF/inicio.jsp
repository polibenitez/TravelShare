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
                $("#origen").attr("placeholder", "Origen");
                $("#destino").attr("placeholder", "Destino");
                $("#fecha").attr("placeholder", "Fecha");
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
                                    <li class="current_page_item"><html:link action="/inicio.do" styleClass="enCabecera">Principal</html:link></li>
                                <li><html:link action="/login.do">Iniciar Sesi&oacute;n</html:link></li>
                                <li><html:link action="/registro.do">Registrarse</html:link></li>
                                <li><html:link action="/inicio.do">C&oacute;mo funciona</html:link></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </header>
            </div>

            <!-- Main -->

            <div id="main-wrapper">
                <div class="container">

                    <!-- Banner -->

                    <div class="row">
                        <div class="12u">
                            <div id="banner">
                                <a href="#"><img src="imagenes/logo.jpg" alt="" /></a>
                                <div class="caption">
                                <html:form action="/inicio" >
                                    <div class="row half">
                                     
                                            <html:text property="ciudad" styleClass="textbox" styleId="origen"></html:text>
                                            <html:text property="universidad" styleClass="textbox" styleId="destino"> </html:text>                                       
                                            <html:text property="fecha" styleClass="textbox" styleId="fecha"></html:text>
                                            <div style="max-width:40px;">
                                                <html:submit value="Buscar" property="buscar" styleClass="button"/>
                                            </div>
                                    </div>
                                </html:form>
                            </div>
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
                        </div>
                    </div>
                </div>

                <!-- Features -->

                <div class="row">
                    <div class="3u">
                        <section class="first">
                            <h2>¿Qué hacemos?</h2>
                            <p>Esto es <strong>TravelShare</strong>, un servicio para compartir coche
                                
                        </section>							
                    </div>
                    <div class="3u">
                        <section>
                            <h2>¿Por qué nosotros?</h2>
                            <p>Tenemos los mejores precios</p>
                        </section>							
                    </div>
                    <div class="3u">
                        <section>
                            <h2>Tambien el móviles</h2>
                            <p><strong>Próximamente</strong></p>
                        </section>							
                    </div>
                    <div class="3u">
                        <section class="last">
                            <h2>Servicios en toda España</h2>
                            <p>Contamos con usuarios en todo el territorio</p>
                        </section>							
                    </div>
                </div>

                <!-- Divider -->

                <div class="row">
                    <div class="12u">
                        <div class="divider divider-top"></div>
                    </div>
                </div>

                <!-- Highlight Box -->

                <div class="row">
                    <div class="12u">
                        <div class="highlight-box">
                            <h2>¿Más sobre nosotros?</h2>
                           
                            <a href="#" class="button" style="padding:10px;"> <span>TravelShare</span></a>
                        </div>
                    </div>
                </div>

            </div>
        </div>


        </body>
</html:html>
