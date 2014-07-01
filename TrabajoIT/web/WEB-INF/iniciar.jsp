<%-- 
    Document   : iniciar
    Created on : 25-may-2014, 20:51:14
    Author     : francisco
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css">
        <link href="http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300,300italic,700" rel="stylesheet" />
        <script src="js/jquery.min.js"></script>
        <script src="js/config.js"></script>
        <script src="js/skel.min.js"></script>
        <script src="js/skel-panels.min.js"></script>
        
        <link rel="stylesheet" href="css/skel-noscript.css" />
        <link rel="stylesheet" href="css/style.css" />
        <link rel="stylesheet" href="css/style-desktop.css" />
        <title>JSP Page</title>
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
                                <li class="current_page_item"><html:link action="/login.do">Iniciar Sesi&oacute;n</html:link></li>
                                <li><html:link action="/registro.do">Registrarse</html:link></li>
                                <li><html:link action="/inicio.do">C&oacute;mo funciona</html:link></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </header>
        </div>
        <div class="contenedor">
            <section class="login">
                <div class="formulario">
                    <form action="#" method="POST">
                        <fieldset>
                            <img src="imagenes/avatar_login.png">
                            <legend>Inicia sesi&oacute;n con tu cuenta</legend>
                            <input class="textbox" type="text" name="user" placeholder="Usuario.." autofocus required  />
                            <input class="textbox" type="password" name="pass" placeholder="Contrase&ntilde;a" required />
                            <input class="boton" type="submit" name="login" value="Iniciar sesi&oacute;n"/>
                        </fieldset>
                    </form>
                </div>
            </section>
        </div>
    </body>
</html>
