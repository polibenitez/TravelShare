<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html:html lang="true">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <link rel="stylesheet" type="text/css" href="style.css">
        <title>TravelShare</title>
        <script type="text/javascript" >
            $(function() {
                $("#nick").attr("placeholder", "Nick");
                $("#pass").attr("placeholder", "Contraseña").attr("type", "password");
            });
        </script>
    </head>
    <body>
        <div class="contenedor">
            <header>
                <div class="titulos">
                    <h1>TravelShare</h1>
                    <html:link action="inicio.do" styleClass="enCabecera">Principal</html:link>
                    <html:img src="imagenes/guia-menu.png" />
                    Login
                </div>
            </header>
            <section class="login">
                <div class="formulario">
                    <html:form action="checklogin">
                        <fieldset>
                            <img src="imagenes/avatar_login.png">
                            <legend>Inicia sesi&oacute;n con tu cuenta</legend>
                                <p>
                                    Usuario:<html:text property="nick" styleId="nick"></html:text>
                                </p>
                                <p>
                                    Clave:<html:text property="pass" styleId="pass"></html:text>
                                </p>
                                <p>
                                    <html:submit>Enviar</html:submit>
                                </p>
                            </fieldset>
                        <html:errors></html:errors>
                        <logic:notEmpty name="msg">
                            <bean:write name="msg" />
                        </logic:notEmpty>
                    </html:form>   
                </div>
            </section>
        </div>
    </body>

</html:html>
