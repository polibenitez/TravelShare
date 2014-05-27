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
        <title>JSP Page</title>
    </head>
    <body>
        <div class="contenedor">
            <header>
                <div class="titulos">
                    <h1>Viajes</h1>
                    <a href="inicio.jsp">Principal</a>
                    <img src="imagenes/guia-menu.png">
                    Login
                    <img src="imagenes/guia-menu.png">
                </div>
            </header>
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
